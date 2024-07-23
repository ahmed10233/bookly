import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(children: [
        const SizedBox(height: 300,),
        Center(
          child: Container(
            height: 200,
            color: Colors.amber,
            child: const Center(
              child: Text('Hi Ahmed',style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 0, 0, 0)
              ),),
            ),
          ),
        )
      ],),
                   
    );
  }
}