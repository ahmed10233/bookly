import 'package:bookly_app/Features/home/presentation/view/widgets/custom_text_field.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/cubit/auth_cubit/auth_cubit.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    TextEditingController emailContloller = TextEditingController();
    TextEditingController passwordContloller = TextEditingController();
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          isLoading = true;
        } else if (state is LoginSuccess) {
          BlocProvider.of<AuthCubit>(context)
              .loginMethod(emailContloller, passwordContloller);
          GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
          isLoading = false;
        } else if (state is LoginFailure) {
          showSnackBar(context, state.errorMessage);
          isLoading = false;
        } else if (state is EmailNotVerified) {
          showSnackBar(context, state.errorMessage);
          isLoading = false;
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Scaffold(
            backgroundColor: kPrimaryColor,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Image.asset(
                          "assets/images/c14acf757841556ec3507eb0b4f3aac0-removebg-preview.png"),
                      const Text(
                        ' Login',
                        style: TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                          contloller: emailContloller, hintText: "Email"),
                      const SizedBox(
                        height: 40,
                      ),
                      CustomTextField(
                          contloller: passwordContloller, hintText: "Passwoed"),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          BlocProvider.of<AuthCubit>(context)
                              .loginMethod(emailContloller, passwordContloller);
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            fixedSize: const Size(400, 48),
                            backgroundColor:
                                const Color.fromARGB(255, 255, 255, 255)),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't Have an account?"),
                          TextButton(
                              onPressed: () {
                                GoRouter.of(context)
                                    .pushReplacement(AppRouter.kSignUpView);
                              },
                              child: const Text("Registre"))
                        ],
                      )
                    ]),
              ),
            ),
          ),
        );
      },
    );
  }
}
