import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          Container(
            height: 140,
            width: 80,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/book.png",
                    ),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(8)),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              children: [
                Text("ahmed"),
                Text("sadek"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
