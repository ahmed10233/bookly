part of 'recently_addition_cubit.dart';

abstract class RecentlyAdditionState extends Equatable {
  const RecentlyAdditionState();

  @override
  List<Object> get props => [];
}

class RecentlyAdditionInitial extends RecentlyAdditionState {}

class RecentlyAdditionLoading extends RecentlyAdditionState {}

class RecentlyAdditionFailure extends RecentlyAdditionState {

  final String erroMessage;

 const RecentlyAdditionFailure(this.erroMessage);
}
 
class RecentlyAdditionSuccess extends RecentlyAdditionState {

  final List<AllBooksModel> books;

 const RecentlyAdditionSuccess(this.books);
} 

