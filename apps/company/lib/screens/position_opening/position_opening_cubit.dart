import 'package:bloc/bloc.dart';
import 'package:company/model/enum/tech_skill.dart';
import 'package:company/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'position_opening_state.dart';

class PositionOpeningCubit extends Cubit<PositionOpeningState> {
  PositionOpeningCubit() : super(PositionOpeningInitial());
  List<TechSkill> positions = [];
  navigateToHome(BuildContext context) => Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => const HomeScreen()));

  postionTapped(TechSkill position) {
    positions.contains(position)
        ? positions.remove(position)
        : positions.add(position);
    emitUpdate();
  }

  emitUpdate() => emit(UpdateUIState());
}
