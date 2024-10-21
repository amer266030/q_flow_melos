import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_melos_widgets/widgets.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({super.key, this.boldText, this.text});

  final String? boldText;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
              text: boldText,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            TextSpan(text: text, style: TextStyle(color: Colors.grey))
          ])),
        ),
        SizedBox(height: context.screenHeight * 0.01),
        Align(
          alignment: Alignment.center,
          child: RatingBarIndicator(
            rating: 2.75,
            itemBuilder: (context, index) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemCount: 5,
            itemSize: 50,
            direction: Axis.horizontal,
          ),
        ),
        SizedBox(height: context.screenHeight * 0.01),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Divider(thickness: context.screenHeight * 0.003),
        ),
      ],
    );
  }
}
