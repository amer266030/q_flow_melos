import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:my_melos_widgets/widgets.dart';
import 'package:organizer/screen/event/event_detail.dart';

import 'cubit/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Builder(builder: (context) {
        final cubit = context.read<HomeCubit>();
        return Scaffold(
          floatingActionButtonLocation: ExpandableFab.location,
          floatingActionButton: ExpandableFab(
            children: [
              FloatingActionButton.small(
                heroTag: null,
                backgroundColor: context.primary,
                shape: const StadiumBorder(),
                onPressed: () => cubit.currentLanguage(lang: 'Language'),
                child: const Icon(Icons.logout, color: Colors.white),
              ),
              FloatingActionButton.small(
                heroTag: null,
                backgroundColor: context.primary,
                shape: const StadiumBorder(),
                onPressed: () => cubit.currentMode(mode: 'Mode'),
                child: Icon(Icons.dark_mode, color: context.bg1),
              ),
              FloatingActionButton.small(
                heroTag: null,
                backgroundColor: context.primary,
                onPressed: () => cubit.currentLanguage(lang: 'Logout'),
                shape: const StadiumBorder(),
                child: Text('AR', style: TextStyle(color: context.bg1)),
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
                            style: TextStyle(
                                color: context.primary, fontSize: 12)),
                      ],
                    ),
                  ),
                  SizedBox(height: context.screenHeight * 0.04),
                  SizedBox(
                    height: context.screenHeight * 0.3,
                    width: context.screenWidth,
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                              cubit.currentIndex(
                                  context: context, myIndex: index);
                          },
                          child: Image.asset(
                            'assets/img/test.png',
                            fit: BoxFit.fill,
                          ),
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
      }),
    );
  }
}
