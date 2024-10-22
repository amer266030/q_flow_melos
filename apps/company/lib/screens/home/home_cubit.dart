import 'package:bloc/bloc.dart';
import 'package:company/mock_data/visitor_data.dart';
import 'package:company/model/enum/visitor_status.dart';
import 'package:company/model/enum/events.dart';
import 'package:company/model/user/visitor.dart';
import 'package:company/reusable_components/swiper_card.dart';
import 'package:company/screens/edit_detailes/edit_details_screen.dart';
import 'package:company/screens/position_opening/position_opening_screen.dart';
import 'package:company/screens/visitor_details.dart/visitor_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<Visitor> filteredVisitors = [];
  VisitorStatus selectedStatus = VisitorStatus.inQueue;

  Events? selectedEvent = Events.jopFair111;

  bool isOpenApplying = false;
  double queueLimit = 10;

  List<Visitor> visitor = [];

  void filterBySize(String str) {
    selectedEvent =
        Events.values.where((e) => e.value == str).toList().firstOrNull;

    emitUpdate();
  }

  void toggleOpenApplying(bool value) {
    isOpenApplying = value;
    emit(UpdateUIState());
  }

  setSelectedStatus(int idx) {
    selectedStatus = VisitorStatus.values[idx];
    filterVisitors();
    emitUpdate();
  }

  void filterVisitors() {
    filteredVisitors = filteredVisitors =
        visitors.where((v) => v.status == selectedStatus).toList();
    print("Filtered Visitors Count: ${filteredVisitors.length}"); // Debug line
    emit(UpdateUIState());
  }

  navigateToVisitorDetails(BuildContext context) =>
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => VisitorDetailsScreen()));

  void emitUpdate() => emit(UpdateUIState());
}
