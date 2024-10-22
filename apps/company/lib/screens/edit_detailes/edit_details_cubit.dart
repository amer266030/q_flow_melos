import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:image_picker/image_picker.dart';

part 'edit_details_state.dart';

class EditDetailsCubit extends Cubit<EditDetailsState> {
  EditDetailsCubit() : super(EditDetailsInitial());
  File? logo;
  void getImage() async {
    final img = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (img != null) logo = File(img.path);
    emitUpdate();
  }

  void emitLoading() => emit(LoadingState());
  void emitUpdate() => emit(UpdateUIState());
}
