import 'package:card_swiper/card_swiper.dart';
import 'package:company/model/enum/visitor_status.dart';
import 'package:company/model/enum/events.dart';
import 'package:company/reusable_components/cards/swiper_card.dart';
import 'package:company/reusable_components/cards/visitor_card.dart';
import 'package:company/screens/drawer/drawer_screen.dart';
import 'package:company/screens/home/home_cubit.dart';
import 'package:company/screens/home/subviews/app_bar_view.dart';
import 'package:company/screens/home/subviews/filter_item_view.dart';
import 'package:company/screens/home/subviews/open_appling_view.dart';
import 'package:company/screens/home/subviews/queue_limit_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_melos_widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Builder(builder: (context) {
        final cubit = context.read<HomeCubit>();
        return Scaffold(
          appBar: const AppBarView(),
          drawer: DrawerScreen(),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Expanded(
                    child: BlocBuilder<HomeCubit, HomeState>(
                      builder: (context, state) {
                        return Column(
                          children: [
                            Theme(
                              data: Theme.of(context)
                                  .copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                initiallyExpanded: true,
                                title: Text(
                                  'Events',
                                  style: TextStyle(
                                    fontSize: context.bodyLarge.fontSize,
                                    fontWeight: FontWeight.bold,
                                    color: context.textColor1,
                                  ),
                                ),
                                children: [
                                  FilterItemView(
                                    itemValues: Events.values
                                        .map((e) => e.value)
                                        .toList(),
                                    setValueFunc: (str) =>
                                        cubit.filterBySize(str),
                                    currentSelection:
                                        cubit.selectedEvent?.value,
                                  ),
                                ],
                              ),
                            ),
                            OpenApplyingView(
                              value: cubit.isOpenApplying,
                              onOpen: (value) {
                                cubit.toggleOpenApplying(value);
                              },
                            ),
                            QueueLimitView(
                              value: cubit.queueLimit.toInt(),
                              onChange: (value) {
                                cubit.queueLimit = value.toDouble();
                                cubit.emitUpdate();
                              },
                            ),
                            ToggleBtnsV2(
                              currentIndex: VisitorStatus.values
                                  .indexOf(cubit.selectedStatus),
                              tabs: VisitorStatus.values
                                  .map((c) => c.value)
                                  .toList(),
                              callback: (int value) =>
                                  cubit.setSelectedStatus(value),
                            ),
                            SizedBox(height: 16),
                            Expanded(
                              child: cubit.selectedStatus ==
                                      VisitorStatus.inQueue
                                  ? Swiper(
                                      layout: SwiperLayout.CUSTOM,
                                      customLayoutOption: CustomLayoutOption(
                                        startIndex: -1,
                                        stateCount: 3,
                                      )
                                        ..addRotate(
                                            [-70.0 / 200, 0.0, 90.0 / 200])
                                        ..addTranslate([
                                          Offset(-180.0, -20.0),
                                          Offset(0.0, 0.0),
                                          Offset(170.0, -40.0),
                                        ]),
                                      itemWidth: context.screenWidth * 0.9,
                                      itemCount: cubit.filteredVisitors.length,
                                      itemBuilder: (context, index) {
                                        final visitor =
                                            cubit.filteredVisitors[index];
                                        return Column(
                                          children: [
                                            VisitorAvatarControl(),
                                          ],
                                        );
                                      },
                                      pagination: SwiperPagination(
                                        builder: FractionPaginationBuilder(
                                          color: context.textColor3,
                                          activeColor: context.secondary,
                                        ),
                                      ),
                                    )
                                  : ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: cubit.filteredVisitors.length,
                                      itemBuilder: (context, index) {
                                        final visitor =
                                            cubit.filteredVisitors[index];
                                        return VisitorCard(
                                          visitor: visitor,
                                          isBookmarked: false,
                                          toggleBookmark: () {},
                                        );
                                      },
                                    ),
                            ),
                            cubit.selectedStatus == VisitorStatus.inQueue
                                ? Row(
                                    children: [
                                      Expanded(
                                          child: PrimaryBtn(
                                              callback: () => cubit
                                                  .navigateToVisitorDetails(
                                                      context),
                                              title: "Start")),
                                    ],
                                  )
                                : Text("")
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
