import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.bookName, required this.autherName});
  final String bookName;
  final String autherName;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
            image: const DecorationImage(
                image: AssetImage(
                  "assets/images/images.jpeg",
                ),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(14)),
        height: 250,
        width: 180,
        child:  Column(
          
        //  mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
                const SizedBox(height: 75,),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: SizedBox(
                    height: 85,
                    child: Text(
                    bookName,
                    style: const TextStyle(
                      fontSize: 19,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center, 
                    maxLines: 3, // Limit to 3 lines
                    overflow:
                        TextOverflow.ellipsis, 
                    textDirection:
                        TextDirection.rtl, 
                                  ),
                  ),
                ),
                const SizedBox(height: 15,),
                  Padding(
                     padding: const EdgeInsets.only(right: 10,),
                     child: Text("للكاتب: $autherName", style: const TextStyle(
                                       fontSize: 17,
                                       color: Color.fromARGB(255, 221, 255, 0),
                                       fontWeight: FontWeight.w900,
                                     ),
                                   //  textAlign: TextAlign.right, 
                                     ),
                   ),
                            //  SizedBox(height: 20,),
                 
          ],
        ),
      ),
    );
  }
}
