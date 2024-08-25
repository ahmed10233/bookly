import 'package:bookly_app/Features/home/presentation/manger/all_books_cubit/allbooks_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manger/recently_addition/recently_addition_cubit.dart';
import 'package:bookly_app/Features/home/repos/home_repo_implemantaion.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/cubit/auth_cubit/auth_cubit.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setServiceLocator();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
      BlocProvider(create: (context) => AuthCubit(),

      ),
      BlocProvider(create: (context) => AllbooksCubit(
        getIt.get<HomeRepoImplemantaion>(),
      ),),
        BlocProvider(create: (context) => RecentlyAdditionCubit(
        getIt.get<HomeRepoImplemantaion>(),
      ),
      ),  
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
