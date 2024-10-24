import 'package:company/model/enum/tech_skill.dart';
import 'package:company/screens/position_opening/position_opening_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_melos_widgets/widgets.dart';

class PositionOpeningScreen extends StatelessWidget {
  const PositionOpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocProvider(
        create: (context) => PositionOpeningCubit(),
        child: Builder(builder: (context) {
          final cubit = context.read<PositionOpeningCubit>();

          return Scaffold(
            appBar: AppBar(),
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  PageHeaderView(title: "Position Opening"),
                  BlocBuilder<PositionOpeningCubit, PositionOpeningState>(
                    builder: (context, state) {
                      return Expanded(
                        child: GridView(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1,
                            mainAxisSpacing: 24,
                            crossAxisSpacing: 24,
                          ),
                          children: TechSkill.values
                              .map((b) => InkWell(
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () => cubit.postionTapped(b),
                                    child: _GridItemView(
                                        title: b.value,
                                        isSelected:
                                            cubit.positions.contains(b)),
                                  ))
                              .toList(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: PrimaryBtn(
                            callback: () => cubit.navigateToHome(context),
                            title: 'Continue'),
                      ),
                    ],
                  )
                ],
              ),
            )),
          );
        }),
      ),
    );
  }
}

class _GridItemView extends StatelessWidget {
  const _GridItemView({required this.title, required this.isSelected});

  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.bg2,
          border: Border.all(
              color: isSelected ? context.primary : context.bg3, width: 3)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: context.bodyLarge.fontSize,
              color: isSelected ? context.primary : context.textColor2),
          textAlign: TextAlign.center,
          maxLines: 2,
          softWrap: true,
        ),
      ),
    );
  }
}
