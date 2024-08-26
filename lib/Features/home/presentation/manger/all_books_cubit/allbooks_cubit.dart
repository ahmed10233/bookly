import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/all_books_model/all_books_model.dart';
import 'package:bookly_app/Features/home/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'allbooks_state.dart';

class AllbooksCubit extends Cubit<AllbooksState> {
  AllbooksCubit(this.homeRepo) : super(AllbooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchAllBooks() async {
    emit(AllbooksLoading());
    var result = await homeRepo.fetchAllBooks();
    result.fold((failure) {
      emit(AllbooksFailure(failure.erroMessage));
    }, (books) {
      emit(AllbooksSuccess(books: books));
    });
  }
}
