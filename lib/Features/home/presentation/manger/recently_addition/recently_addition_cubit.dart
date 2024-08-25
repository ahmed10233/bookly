import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/all_books_model/all_books_model.dart';
import 'package:bookly_app/Features/home/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'recently_addition_state.dart';

class RecentlyAdditionCubit extends Cubit<RecentlyAdditionState> {
  RecentlyAdditionCubit(this.homeRepo) : super(RecentlyAdditionInitial());

 final HomeRepo homeRepo;

 Future <void>fetchRecentAddedBooks()async{
  emit(RecentlyAdditionLoading());
  var result = await homeRepo.fetchAllBooks();
  result.fold((failure){
    emit(RecentlyAdditionFailure(failure.erroMessage));
  }, (books){
    emit(RecentlyAdditionSuccess(books));
  });
 }
  
}
