import 'package:bookly_app/Features/auth/presentation/views/login_view.dart';
import 'package:bookly_app/Features/auth/presentation/views/signup_view.dart';
import 'package:bookly_app/Features/book_details/presentation/view/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/view/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const  kHomeView = "/homeView";
  static const  kLogInView = "/logInView";
  static const  kSignUpView = "/signUpView";
    static const  kBookDetailsView = "/BookDetailsView";
static final router = GoRouter(
  routes: [
    GoRoute(path: "/",
    builder: (context, state) => const SplashView(),
    ),
    GoRoute(path:kHomeView,
    builder: (context, state) => const HomeView(),
    ),
    GoRoute(path:kSignUpView,
    builder: (context, state) => const SignupView(),
    ),
    GoRoute(path:kLogInView,
    builder: (context, state) => const LoginView(),
    ),
     GoRoute(path:kBookDetailsView,
    builder: (context, state) => const BookDetailsView(),
    ),
  ],
  
  
  );
}