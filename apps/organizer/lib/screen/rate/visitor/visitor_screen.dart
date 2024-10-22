import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_melos_widgets/widgets.dart';

import '../widget/vistor_rating.dart';

class VisitorScreen extends StatelessWidget {
  const VisitorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        expandedHeight: context.screenHeight * 0.4,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset('assets/img/test.png', fit: BoxFit.cover),
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate([
          SizedBox(height: context.screenHeight * 0.04),
          Padding(
            padding: EdgeInsets.only(left: context.screenWidth * 0.03),
            child: Text('Yara Albouq', style: context.titleMedium),
          ),
          SizedBox(height: context.screenHeight * 0.01),
          Padding(
            padding: EdgeInsets.only(left: context.screenWidth * 0.05),
            child: Text('id', style: context.titleSmall),
          ),
          SizedBox(height: context.screenHeight * 0.03),
          Padding(
            padding: EdgeInsets.only(left: context.screenWidth * 0.06),
            child: Text('Rating:', style: context.titleSmall),
          ),
          SizedBox(height: context.screenHeight * 0.03),
          VisitorRating(text: 'Technical Skills', ratingNumber: 3.90),
          VisitorRating(text: 'Soft Skills'),
          VisitorRating(text: 'Job Skills'),
        ]),
      )
    ]));
  }
}
