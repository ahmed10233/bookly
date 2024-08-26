part of 'allbooks_cubit.dart';

abstract class AllbooksState extends Equatable {
  const AllbooksState();

  @override
  List<Object> get props => [];
}

class AllbooksInitial extends AllbooksState {}

class AllbooksLoading extends AllbooksState {}

class AllbooksSuccess extends AllbooksState {
  final List<AllBooksModel> books;

  const AllbooksSuccess({required this.books});
}

class AllbooksFailure extends AllbooksState {
  final String erroMessage;
  const AllbooksFailure(this.erroMessage);
}
