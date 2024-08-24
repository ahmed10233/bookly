import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl="https://api3.islamhouse.com/v3/paV29H2gm56kvLPy/main/";
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String,dynamic>>get({required String endPoint})async{
   var response= await dio.get("$_baseUrl$endPoint");
   return response.data;
  }
}