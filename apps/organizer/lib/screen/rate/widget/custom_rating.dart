import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_melos_widgets/widgets.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({super.key, this.boldText, this.text, this.ratingNumber});

  final String? boldText;
  final String? text;
  final double? ratingNumber;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: context.screenWidth * 0.05),
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
        Padding(
          padding: EdgeInsets.only(left: context.screenWidth * 0.03),
          child: Align(
            alignment: Alignment.centerLeft,
            child: RatingBarIndicator(
              rating: ratingNumber ?? 2.90,
              itemBuilder: (context, index) => Icon(
                Icons.star,
                color: Color(0xff199C90),
              ),
              itemCount: 5,
              itemSize: 50,
              direction: Axis.horizontal,
            ),
          ),
        ),
        SizedBox(height: context.screenHeight * 0.01),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.05),
          child: Divider(thickness: context.screenHeight * 0.003),
        ),
      ],
    );
  }
}
