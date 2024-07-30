import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({super.key,  this.mainAxisAlignment=MainAxisAlignment.start});
 final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color.fromARGB(255, 255, 225, 0),
          size: 20,
        ),
         SizedBox(
          width: 6.5,
        ),
        Text(
          "4.8",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            "(598)",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
