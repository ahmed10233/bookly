import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppbar extends StatelessWidget {
  const CustomBookDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    GoRouter.of(context).push( AppRouter.kHomeView);
                  }, icon: const Icon(Icons.close,size: 34,color: Colors.white,)),
           
                  IconButton(
                    
                      onPressed: (){},
                       icon: const Icon(Icons.shopping_cart_outlined,size: 34,color: Colors.white,)
                       ,
                       ),
                      
                ],
              ),
            );
  }
}