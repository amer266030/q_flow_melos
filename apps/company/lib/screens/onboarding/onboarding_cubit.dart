import 'package:bloc/bloc.dart';
import 'package:company/screens/auth/auth_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:my_melos_widgets/extensions/img_ext.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());

  var idx = 0;

  changeIdx() {
    idx += 1;
    emit(UpdateUIState());
  }

  navigateToAuth(BuildContext context) => Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => AuthScreen()));

  final List<AssetImage> images = [Img.ob1, Img.ob2, Img.ob3];
  final List<(String, String)> content = [
    (
      'Discover \nOpportunities',
      'Explore visitor profiles to find candidates that align with your needs.'
    ),
    (
      'Pre-Book \nInterviews',
      'Easily schedule interviews in advance for a smooth hiring process.'
    ),
    (
      'Real-Time \nUpdates',
      'Stay informed with instant notifications on interview schedules.'
    )
  ];
}
