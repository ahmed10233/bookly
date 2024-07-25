
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.27,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: const CustomBookItem(),
          );
        },
        
      ),
    );
  }
}