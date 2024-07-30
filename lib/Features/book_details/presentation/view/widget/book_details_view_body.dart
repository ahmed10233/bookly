import 'package:bookly_app/Features/book_details/presentation/view/widget/details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_book_item.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/rating_book.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        children: [
          const CustomBookDetailsAppbar(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: const CustomBookItem(),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("The Jungle Book",style: TextStyle(color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
         
          ),),
          const SizedBox(
            height: 20,
          ),
          const Opacity(
            opacity: 0.7,
            child: Text("Rudyard Kipling",style: TextStyle(color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
                     
            ),),
          ),
          const SizedBox(
          height: 18,
        ),
        const  RatingBook(mainAxisAlignment: MainAxisAlignment.center)
        ],
      ),
    );
  }
}
