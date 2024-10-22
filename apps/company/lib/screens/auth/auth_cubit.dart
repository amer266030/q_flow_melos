import 'package:bloc/bloc.dart';
import 'package:company/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  navigate(BuildContext context) {
    _navigateToEditDetails(context);
  }

  _navigateToEditDetails(BuildContext context) =>
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()));

  _navigateToHome(BuildContext context) =>
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()));
}
