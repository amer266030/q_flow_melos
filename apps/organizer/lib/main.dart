import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_melos_widgets/widgets.dart';
import 'screen/event/event_home.dart';
import 'screen/home/home_screen.dart';
import 'screen/login/login_screen.dart';
import 'screen/rate/company/company_screen.dart';
import 'screen/rate/visitor/visitor_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppThemeCubit(),
      child: BlocBuilder<AppThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppThemes.lightTheme,
            darkTheme: AppThemes.darkTheme,
            themeMode: themeMode,
            locale: context.locale, // From EasyLocalization
            supportedLocales: context.supportedLocales, // From EasyLocalization
            localizationsDelegates:
                context.localizationDelegates, // From EasyLocalization
            home: LoginScreen(),
          );
        },
      ),
    );
  }
}
