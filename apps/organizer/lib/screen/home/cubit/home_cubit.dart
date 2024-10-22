import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_melos_widgets/widgets.dart';
import 'package:organizer/screen/event/event_home.dart';

import '../../event/event_detail.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  logOut() {
    emitLoading();
    print('Logout');
    emitUpdate();
  }

  currentLanguage({required String lang}) {
    emitLoading();
    print(lang);
    emitUpdate();
  }

  currentMode({required String mode}) {
    emitLoading();
    print(mode);
    emitUpdate();
  }

  currentIndex({required int myIndex, required BuildContext context}) {
    emitLoading();
    print(myIndex);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EventHome(),
      ),
    );
    emitUpdate();
  }

  void emitLoading() => emit(LoadingState());
  void emitUpdate() => emit(UpdateUIState());
}
