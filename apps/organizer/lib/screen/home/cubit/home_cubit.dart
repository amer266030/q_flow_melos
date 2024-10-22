import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  logOut() {
    emitLoading();
    print('Logout');
    emitUpdate();
  }
  currentLanguage({ required String lang}) {
    emitLoading();
    print(lang);
    emitUpdate();
  }

  currentMode({ required String mode}) {
    emitLoading();
    print(mode);
    emitUpdate();
  }

  currentIndex({ required int myIndex}) {
    emitLoading();
    print(myIndex);
    emitUpdate();
  }

  void emitLoading() => emit(LoadingState());
  void emitUpdate() => emit(UpdateUIState());
}
