import 'package:card_swiper/card_swiper.dart';
import 'package:company/model/enum/visitor_status.dart';
import 'package:company/model/enum/events.dart';
import 'package:company/reusable_components/cards/swiper_card.dart';
import 'package:company/reusable_components/cards/visitor_card.dart';
import 'package:company/screens/drawer/drawer_screen.dart';
import 'package:company/screens/drawer/subviews/toggle_list_item.dart';
import 'package:company/screens/home/home_cubit.dart';
import 'package:company/screens/home/subviews/app_bar_view.dart';
import 'package:company/screens/home/subviews/filter_item_view.dart';
import 'package:company/screens/home/subviews/open_appling_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_melos_widgets/reusable_components/buttons/custom_switch.dart';
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
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Queue Status',
                                    style: TextStyle(
                                      fontSize: context.bodyLarge.fontSize,
                                      fontWeight: FontWeight.bold,
                                      color: context.textColor1,
                                    ),
                                  ),
                                  Spacer(),
                                  Expanded(
                                    child: CustomSwitch(
                                        value: cubit.isOpenApplying,
                                        option1: "open",
                                        option2: "close",
                                        onChanged: (_) =>
                                            cubit.toggleOpenApplying(context)),
                                  )
                                ],
                              ),
                            ),
                            ExpandedToggleButtons(
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
                                  ? Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Swiper(
                                        layout: SwiperLayout.DEFAULT,
                                        itemWidth: context.screenWidth,
                                        itemCount:
                                            cubit.filteredVisitors.length,
                                        itemBuilder: (context, index) {
                                          final visitor =
                                              cubit.filteredVisitors[index];
                                          return Column(
                                            children: [
                                              VisitorAvatarControl(
                                                  visitor: visitor),
                                            ],
                                          );
                                        },
                                        pagination: SwiperPagination(
                                          builder: FractionPaginationBuilder(
                                            color: context.textColor3,
                                            activeColor: context.primary,
                                          ),
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
