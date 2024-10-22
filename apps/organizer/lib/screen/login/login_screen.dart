import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_melos_widgets/widgets.dart';
import 'package:organizer/screen/login/cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Builder(builder: (context) {
        final cubit = context.read<LoginCubit>();
        return Scaffold(
          body: Column(
            children: [
              SizedBox(height: context.screenWidth * 0.3),
              Image.asset('assets/img/q_green.png'),
              SizedBox(height: context.screenWidth * 0.2),
              Padding(
                padding: EdgeInsets.only(left: context.screenWidth * 0.08),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Login', style: context.titleLarge),
                ),
              ),
              SizedBox(height: context.screenWidth * 0.3),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: context.screenWidth * 0.05),
                child: CustomTextField(
                  hintText: 'Email',
                  controller: TextEditingController(),
                  validation: (String value) {},
                ),
              ),
              SizedBox(height: context.screenWidth * 0.1),
              PrimaryBtn(
                title: 'Login',
                callback: () => cubit.goTo(context),
              ),
            ],
          ),
        );
      }),
    );
  }
}
