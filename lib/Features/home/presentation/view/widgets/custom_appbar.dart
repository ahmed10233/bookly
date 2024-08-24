import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/Logo.png",
            height: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              size: 34,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
