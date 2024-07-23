import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_cubit_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthCubitInitial());

  Future<void> loginMethod(TextEditingController emailController,
      TextEditingController passwordController) async {
    emit(LoginLoading());
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);

      User? user = userCredential.user;

      if (user != null && !user.emailVerified) {
        await FirebaseAuth.instance.signOut();
        emit(EmailNotVerified(
          errorMessage: 'Email Not Verified'
        ));
      } else {
        emit(LoginSuccess());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginFailure(errorMessage: 'User Not Found'));
      } else if (e.code == 'wrong-password') {
        emit(LoginFailure(errorMessage: 'Wrong Password'));
      } else if (e.code == 'invalid-email') {
        emit(LoginFailure(errorMessage: 'Invalid Email'));
      } else if (e.code == 'channel-error') {
        emit(LoginFailure(errorMessage: "Please Enter an Email and Password"));
      } else if (e.code == 'too-many-requests') {
        emit(LoginFailure(
            errorMessage: 'There is an error please try again later'));
      }
    }
  }

  Future<void> createUserMethod(TextEditingController emailController,
      TextEditingController passwordController) async {
    emit(SignUpLoading());
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);

      // Send email verification
      await sendEmailVerification();

      emit(SignUpSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailure(errorMessage: 'Weak Password'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailure(errorMessage: "This account already exists"));
      } else if (e.code == 'invalid-email') {
        emit(SignUpFailure(errorMessage: 'Invalid Email'));
      } else if (e.code == 'channel-error') {
        emit(SignUpFailure(errorMessage: "Please Enter an Email and Password"));
      } else if (e.code == 'too-many-requests') {
        emit(SignUpFailure(
            errorMessage: 'There is an error please try again later'));
      }
    } catch (ex) {
      emit(SignUpFailure(
          errorMessage: 'There is an error please try again later'));
    }
  }

  Future<void> sendEmailVerification() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null && !user.emailVerified) {
        await user.sendEmailVerification();
        emit(EmailVerificationSent());
      }
    } catch (e) {
      emit(EmailVerificationFailure(errorMessage: 'Failed to send verification email'));
    }
  }
}
