part of 'auth_cubit.dart';

abstract class AuthState {}

class AuthCubitInitial extends AuthState {}

class LoginLoading extends AuthState {}

class LoginSuccess extends AuthState {}

class LoginFailure extends AuthState {
  final String errorMessage;
  LoginFailure({required this.errorMessage});
}

class SignUpLoading extends AuthState {}

class SignUpSuccess extends AuthState {}

class SignUpFailure extends AuthState {
  final String errorMessage;
  SignUpFailure({required this.errorMessage});
}

class EmailVerificationSent extends AuthState {}

class EmailVerificationFailure extends AuthState {
  final String errorMessage;
  EmailVerificationFailure({required this.errorMessage});
}

class EmailNotVerified extends AuthState {
  final String errorMessage;
  EmailNotVerified({required this.errorMessage});
}
