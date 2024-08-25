import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/all_books_model/all_books_model.dart';
import 'package:equatable/equatable.dart';

part 'recently_addition_state.dart';

class RecentlyAdditionCubit extends Cubit<RecentlyAdditionState> {
  RecentlyAdditionCubit() : super(RecentlyAdditionInitial());

  
}
