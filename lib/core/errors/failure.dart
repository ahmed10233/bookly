import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failure {
  final String erroMessage;
  const Failure(this.erroMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.erroMessage);
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("connection Timeout");
      case DioExceptionType.sendTimeout:
        return ServerFailure("send Timeout");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("receive Timeout");
      case DioExceptionType.badCertificate:
        return ServerFailure("there is an error");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Requste Canceled");
      case DioExceptionType.connectionError:
        return ServerFailure("connection Error, No internet connection");
      case DioExceptionType.unknown:
        return ServerFailure("Unexpected Error , please try again");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]);
    } else if (statusCode == 404) {
      return ServerFailure("Your Request not found");
    } else if (statusCode == 500) {
      return ServerFailure("Interenal server error");
    } else {
      return ServerFailure("Opps there is an error , pleade try again");
    }
  }
}

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.erroMessage});
  final String erroMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      erroMessage,
      style: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
    );
  }
}
