import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_event_state.dart';

class AddEventCubit extends Cubit<AddEventState> {
  AddEventCubit() : super(AddEventInitial());

  startDate() {
    emitLoading();

    print('start date');

    Future.delayed(const Duration(seconds: 2), () {});

    emitUpdate();
  }

  endDate() {
    emitLoading();

    print('end date');

    Future.delayed(const Duration(seconds: 2), () {});

    emitUpdate();
  }

  uploadCompanyFile() {
    emitLoading();

    print('upload company file');

    Future.delayed(const Duration(seconds: 2), () {});

    emitUpdate();
  }

  uploadVisitorsFile() {
    emitLoading();

    print('upload visitors file');

    Future.delayed(const Duration(seconds: 2), () {});

    emitUpdate();
  }

  void emitLoading() => emit(LoadingState());
  void emitUpdate() => emit(UpdateUIState());
}
