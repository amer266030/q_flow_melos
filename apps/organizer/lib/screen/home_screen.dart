import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:my_melos_widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        children: [
          FloatingActionButton.small(
            heroTag: null,
            child: const Icon(Icons.edit),
            onPressed: () {},
          ),
          FloatingActionButton.small(
            heroTag: null,
            child: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(children: [
          SizedBox(height: context.screenHeight * 0.02),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: context.screenWidth * 0.2),
              Row(
                children: [
                  SizedBox(width: context.screenWidth * 0.06),
                  Image.asset('assets/img/q_green.png',
                      width: context.screenWidth * 0.15,
                      height: context.screenWidth * 0.15),
                  SizedBox(width: context.screenWidth * 0.01),
                  Text('Tuwaiq Academy', style: context.titleSmall)
                ],
              ),
              SizedBox(height: context.screenWidth * 0.001),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: context.screenWidth * 0.05),
                child: Divider(),
              ),
              SizedBox(height: context.screenHeight * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: context.screenWidth * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('All Events', style: context.titleSmall),
                    Text('New Events',
                        style: TextStyle(color: context.primary, fontSize: 12)),
                  ],
                ),
              ),
              SizedBox(height: context.screenHeight * 0.04),
              SizedBox(
                height: context.screenHeight * 0.3,
                width: context.screenWidth,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      'assets/img/test.png',
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: 3,
                  viewportFraction: 0.8,
                  scale: 0.9,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}