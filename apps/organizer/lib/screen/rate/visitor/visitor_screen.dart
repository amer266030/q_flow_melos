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
          Text('Yara Albouq', style: context.titleLarge),
          SizedBox(height: context.screenHeight * 0.01),
          Text('???????????', style: context.titleMedium),
          SizedBox(height: context.screenHeight * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('boldText',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
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
            ],
          ),
          Column(
            children: [
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
