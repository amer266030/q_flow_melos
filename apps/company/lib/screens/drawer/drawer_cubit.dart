import 'package:bloc/bloc.dart';
import 'package:company/screens/edit_detailes/edit_details_screen.dart';
import 'package:company/screens/onboarding/onboarding_screen.dart';
import 'package:company/screens/privacy_policy_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_melos_widgets/theme_data/app_theme_cubit.dart';

part 'drawer_state.dart';

class DrawerCubit extends Cubit<DrawerState> {
  DrawerCubit() : super(DrawerInitial());
  bool isDarkMode = true;
  bool isEnglish = true;

  navigateToEditDetails(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => EditDetailsScreen()))
        .then((_) {
      // Update Info on page?
    });
  }

  navigateToPrivacyPolicy(BuildContext context) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PrivacyPolicyScreen()));

  void toggleLanguage(BuildContext context) {
    isEnglish = !isEnglish;
    context.setLocale(
        isEnglish ? const Locale('en', 'US') : const Locale('ar', 'SA'));
    _saveLocale(isEnglish);
  }

  void toggleDarkMode(BuildContext context) {
    isDarkMode = !isDarkMode;
    final themeCubit = context.read<AppThemeCubit>();
    themeCubit.changeTheme(isDarkMode ? ThemeMode.light : ThemeMode.dark);
    emitUpdate();
  }

  Future<void> _saveLocale(bool isEnglish) async {
    //final prefs = await SharedPreferences.getInstance();
    //await prefs.setString('locale', isEnglish ? 'true' : 'false');
  }

  logout(BuildContext context) => Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => OnboardingScreen()));

  emitUpdate() => emit(UpdateUIState());
}
