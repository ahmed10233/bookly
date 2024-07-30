import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.contloller, required this.hintText});
  final String hintText;
 final TextEditingController  contloller;


  @override
  Widget build(BuildContext context) {
    return TextField(
      
      
      controller: contloller,
      decoration: InputDecoration(
        suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined)),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 12,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
         
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        // fillColor:  Colors.white,
        // filled: true,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color:Color.fromARGB(255, 44, 0, 203), width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 255, 255, 255),
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
