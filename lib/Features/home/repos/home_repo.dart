import 'package:bookly_app/Features/home/data/models/all_books_model/all_books_model.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<AllBooksModel>>> fetchAllBooks();
  Future<Either<Failure, List<AllBooksModel>>> fetchRecentAdditions();
}
