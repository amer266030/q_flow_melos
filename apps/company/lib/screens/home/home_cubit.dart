import 'package:bloc/bloc.dart';
import 'package:company/mock_data/visitor_data.dart';
import 'package:company/model/enum/visitor_status.dart';
import 'package:company/model/enum/events.dart';
import 'package:company/model/user/visitor.dart';
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

  void emitUpdate() => emit(UpdateUIState());
}
