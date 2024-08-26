import 'package:bookly_app/Features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_best_sellrl_list_view.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),

            CustomAppbar(),
            
            SizedBox(height: 60),
            
            CustomListViewItem(),
            
            SizedBox(height: 40),
            
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Beast Seller",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
      SliverFillRemaining(
        child: CustomBestSellrlListView(),
      )
    ]);
  }
}
