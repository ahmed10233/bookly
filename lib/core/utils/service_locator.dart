import 'package:bookly_app/Features/home/repos/home_repo_implemantaion.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImplemantaion>(
      HomeRepoImplemantaion(getIt.get<ApiService>()));
}
