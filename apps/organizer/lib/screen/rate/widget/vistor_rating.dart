import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_melos_widgets/widgets.dart';

class VisitorRating extends StatelessWidget {
  const VisitorRating({super.key, this.text, this.ratingNumber});

  final String? text;
  final double? ratingNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text!,
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            Align(
              alignment: Alignment.center,
              child: RatingBarIndicator(
                rating:ratingNumber ??2.90,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Color(0xff199C90),
                ),
                itemCount: 5,
                itemSize: 40,
                direction: Axis.horizontal,
              ),
            ),
          ],
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
