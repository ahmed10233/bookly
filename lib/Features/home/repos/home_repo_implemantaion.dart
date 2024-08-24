import 'package:bookly_app/Features/home/data/models/all_books_model/all_books_model.dart';
import 'package:bookly_app/Features/home/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplemantaion implements HomeRepo {
  final ApiService apiService;
  HomeRepoImplemantaion(this.apiService);

  @override
  Future<Either<Failure, List<AllBooksModel>>> fetchAllBooks() async {
    try {
      var data = await apiService.get(endPoint: 'books/ar/ar/1/50/json');

      // Assuming data is a List of JSON objects, you map it to AllBooksModel
      List<AllBooksModel> books = (data as List)
          .map((book) => AllBooksModel.fromJson(book))
          .toList();

      return right(books);
    } catch (e) {
    
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<AllBooksModel>>> fetchRecentAdditions() {
    throw UnimplementedError();
  }
}
