import 'package:bookly_app/Features/home/data/models/all_books_model/all_books_model.dart';
import 'package:bookly_app/Features/home/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplemantaion implements HomeRepo {
  @override
  Future<Either<Failure, List<AllBooksModel>>> fetchAllBooks() {
     
    throw UnimplementedError();
  }
  
  @override
  Future<Either<Failure, List<AllBooksModel>>> fetchRecentAdditions() {
   
    throw UnimplementedError();
  }
}