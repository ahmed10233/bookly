import 'package:bookly_app/Features/book_details/presentation/view/widget/details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_book_item.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/rating_book.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppbar(),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: const CustomBookItem(),
          ),
          const SizedBox(
            height: 18,
          ),
          const Text("The Jungle Book",style:
           TextStyle(
           
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
         
          ),),
          
          const Opacity(
            opacity: 0.7,
            child: Text("Rudyard Kipling"
            ,style: TextStyle(
                fontStyle: FontStyle.italic,
              color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
                     
            ),),
          ),
          const SizedBox(
          height: 10,
        ),
        const  RatingBook(mainAxisAlignment: MainAxisAlignment.center),
         const SizedBox(
          height:24,
        ),
           const  Row(
      
      mainAxisAlignment: MainAxisAlignment.center,
         children: [
            Expanded(
              child: CustomButtom(
              buttonColor: Colors.white,
              buttonText: "Price",
              textCollor: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16)
              ),
              ),
            ),
            Expanded(
              child: CustomButtom(
              buttonColor: Color.fromARGB(255, 232, 124, 16),
              buttonText: "Free Preview",
              textCollor: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16)
              ),
              ),
            ),
         ],
       ),
       const SizedBox(
            height: 50,
          ),
      
         const Text("You can also like",
         style:TextStyle(        
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
         
          ),
          ),
            const SizedBox(
          height: 14,
        ),
         const CustomListViewDetails(),
      
        ],
      ),
    );
  }
}
class CustomListViewDetails extends StatelessWidget {
  const CustomListViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
       height: MediaQuery.of(context).size.height*0.15,
      child: ListView.builder(
              scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
        
        return  const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 4),
            child:CustomBookItem() );
      }
      ),
    );
  }
}
class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key,
   required this.buttonText, 
   required this.textCollor,
   required this.buttonColor, 
  this.borderRadius}
  );
final String buttonText;
final Color textCollor;
final Color buttonColor;
final BorderRadius?  borderRadius;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      
      onPressed: (){}, 
    style:TextButton.styleFrom(
      backgroundColor: buttonColor,
      shape:  RoundedRectangleBorder(
        borderRadius: borderRadius ?? const BorderRadius.all(
       Radius.circular(16),
      )
      )
    ),
    child: Text(
    buttonText,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: textCollor
    ),));
  }
}
