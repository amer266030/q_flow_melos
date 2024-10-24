
import 'package:company/screens/onboarding/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_melos_widgets/widgets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: Builder(builder: (context) {
        final cubit = context.read<OnboardingCubit>();
        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: BlocBuilder<OnboardingCubit, OnboardingState>(
                  builder: (context, state) {
                    return Image(
                        image: cubit.images[cubit.idx], fit: BoxFit.fill);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                child: BlocBuilder<OnboardingCubit, OnboardingState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(cubit.content[cubit.idx].$1,
                            style: context.titleMedium),
                        const SizedBox(height: 16),
                        Text(cubit.content[cubit.idx].$2,
                            style: context.bodyMedium),
                        const SizedBox(height: 24),
                        if (cubit.idx == 2)
                          Row(
                            children: [
                              Expanded(
                                child: PrimaryBtn(
                                    callback: () =>
                                        cubit.navigateToAuth(context),
                                    title: 'Login'),
                              ),
                            ],
                          )
                        else
                          Row(
                            children: [
                              Expanded(
                                child: PrimaryBtn(
                                    callback: cubit.changeIdx, title: 'Next'),
                              ),
                            ],
                          )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
