import 'package:bookly_app/Features/home/presentation/manger/all_books_cubit/allbooks_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manger/recently_addition/recently_addition_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_book_item.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecentlyAdditionCubit, RecentlyAdditionState>(
      builder: (context, state) {
        if (state is RecentlyAdditionFailure) {
         CustomError(erroMessage: state.erroMessage);
        }
        if (state is RecentlyAdditionSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CustomBookItem(
                    bookName: state.books[index].title!,
                    autherName: state.books[index].preparedBy![0].title!,
                  ),
                );
              },
            ),
          );
        }
        return const CustomLoading();
      },
    );
  }
}
