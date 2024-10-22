import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:company/screens/home/home_screen.dart';
import 'package:company/screens/position_opening/position_opening_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:image_picker/image_picker.dart';

part 'edit_details_state.dart';

class EditDetailsCubit extends Cubit<EditDetailsState> {
  EditDetailsCubit() : super(EditDetailsInitial());
  File? logo;
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final linkedInController = TextEditingController();
  final websiteController = TextEditingController();
  final xController = TextEditingController();

  ImageProvider? get logoImage {
    return logo != null
        ? FileImage(logo!)
        : null; // Return FileImage if logo is set
  }

  void getImage() async {
    final img = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (img != null) {
      logo = File(img.path);
      emitUpdate(); // Emit update after setting the logo
    }
  }

  navigateToPositionOpening(BuildContext context) => Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => PositionOpeningScreen()));

  void emitLoading() => emit(LoadingState());
  void emitUpdate() => emit(UpdateUIState());
}
