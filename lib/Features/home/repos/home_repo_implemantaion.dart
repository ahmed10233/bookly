import 'package:bookly_app/Features/home/data/models/all_books_model/all_books_model.dart';
import 'package:bookly_app/Features/home/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplemantaion implements HomeRepo {
  final ApiService apiService;
  HomeRepoImplemantaion(this.apiService);

  @override
  Future<Either<Failure, List<AllBooksModel>>> fetchAllBooks() async {
    try {
      var data = await apiService.get(endPoint: 'books/ar/ar/1/50/json');

      List<AllBooksModel> books =[];
      for (var item in data['data']){
        books.add(AllBooksModel.fromJson(item));
      }


      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AllBooksModel>>> fetchRecentAdditions() async{
    
  try {
      var data = await apiService.get(   endPoint: 'get-latest/month/showall/ar/ar/1/25/json');

      List<AllBooksModel> books =[];
      for (var item in data['data']){
        books.add(AllBooksModel.fromJson(item));
      }


      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
