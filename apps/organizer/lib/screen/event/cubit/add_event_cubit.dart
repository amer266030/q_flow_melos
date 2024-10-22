import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_melos_widgets/widgets.dart';

part 'add_event_state.dart';

class AddEventCubit extends Cubit<AddEventState> {
  AddEventCubit() : super(AddEventInitial());

  addEventPicture() {
    emitLoading();

    print('add event picture');

    Future.delayed(const Duration(seconds: 2), () {});

    emitUpdate();
  }

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

  createEvent({required BuildContext context, required Widget page}) {
    emitLoading();
    context.goTo(page);
    emitUpdate();
  }

  void emitLoading() => emit(LoadingState());
  void emitUpdate() => emit(UpdateUIState());
}
