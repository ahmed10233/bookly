import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(
                  "assets/images/book.png",
                ),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(14)),
        height: 250,
        width: 180,
      ),
    );
  }
}
