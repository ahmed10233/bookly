import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/all_books_model/all_books_model.dart';
import 'package:equatable/equatable.dart';

part 'allbooks_state.dart';

class AllbooksCubit extends Cubit<AllbooksState> {
  AllbooksCubit() : super(AllbooksInitial());

  
}
