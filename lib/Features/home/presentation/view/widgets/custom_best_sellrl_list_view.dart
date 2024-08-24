import 'package:bookly_app/Features/home/presentation/view/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class CustomBestSellrlListView extends StatelessWidget {
  const CustomBestSellrlListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: BestSellerItem(),
        );
      },
    );
  }
}
