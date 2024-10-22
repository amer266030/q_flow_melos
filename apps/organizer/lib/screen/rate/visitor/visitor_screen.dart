import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_melos_widgets/widgets.dart';

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
            child: Text('Yara Albouq', style: context.titleLarge),
          ),
          SizedBox(height: context.screenHeight * 0.01),
          Padding(
            padding: EdgeInsets.only(left: context.screenWidth * 0.06),
            child: Text('???????????', style: context.titleMedium),
          ),
          SizedBox(height: context.screenHeight * 0.04),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Technical Skills',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  Align(
                    alignment: Alignment.center,
                    child: RatingBarIndicator(
                      rating: 2.75,
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
          ),
        ]),
      )
    ]));
  }
}
