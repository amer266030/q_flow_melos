import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_melos_widgets/widgets.dart';

import 'cubit/add_event_cubit.dart';
import 'event_home.dart';

class AddEvent extends StatelessWidget {
  const AddEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddEventCubit(),
      child: Builder(builder: (context) {
        final cubit = context.read<AddEventCubit>();
        return Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: context.screenWidth * 0.4),
                  Padding(
                    padding: EdgeInsets.only(left: context.screenWidth * 0.08),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Add Event', style: context.titleLarge)),
                  ),
                  SizedBox(height: context.screenWidth * 0.03),
                  CircleAvatar(
                    radius: context.screenWidth * 0.3,
                    backgroundColor: context.bg3,
                    child: Icon(
                      Icons.person,
                      size: context.screenWidth * 0.2,
                      color: context.secondary,
                    ),
                  ),
                  SizedBox(height: context.screenWidth * 0.01),
                  TextButton(
                      onPressed: cubit.addEventPicture,
                      child: Text(
                        'Add Event Picture',
                        style:
                            context.bodyMedium.copyWith(color: context.primary),
                      )),
                  SizedBox(height: context.screenWidth * 0.03),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.screenWidth * 0.08),
                    child: CustomTextField(
                      hintText: 'Event Name',
                      controller: TextEditingController(),
                      validation: (String value) {},
                    ),
                  ),
                  SizedBox(height: context.screenWidth * 0.001),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.screenWidth * 0.08),
                    child: CustomTextField(
                      hintText: 'Description',
                      controller: TextEditingController(),
                      validation: (String value) {},
                    ),
                  ),
                  SizedBox(height: context.screenWidth * 0.001),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.screenWidth * 0.08),
                    child: CustomTextField(
                      hintText: 'Start Date',
                      suffixIcon: IconButton(
                          onPressed: cubit.startDate,
                          icon: Icon(Icons.date_range_outlined)),
                      controller: TextEditingController(),
                      validation: (String value) {},
                    ),
                  ),
                  SizedBox(height: context.screenWidth * 0.001),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.screenWidth * 0.08),
                    child: CustomTextField(
                      hintText: 'End Date',
                      suffixIcon: IconButton(
                          onPressed: cubit.endDate,
                          icon: Icon(Icons.date_range_outlined)),
                      controller: TextEditingController(),
                      validation: (String value) {},
                    ),
                  ),
                  SizedBox(height: context.screenWidth * 0.001),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.screenWidth * 0.08),
                    child: CustomTextField(
                      hintText: 'Upload company .xlsx',
                      suffixIcon: IconButton(
                          onPressed: cubit.uploadCompanyFile,
                          icon: Icon(Icons.upload_file)),
                      controller: TextEditingController(),
                      validation: (String value) {},
                    ),
                  ),
                  SizedBox(height: context.screenWidth * 0.001),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.screenWidth * 0.08),
                    child: CustomTextField(
                      suffixIcon: IconButton(
                          onPressed: cubit.uploadVisitorsFile,
                          icon: Icon(Icons.upload_file)),
                      hintText: 'Upload visitors .xlsx',
                      controller: TextEditingController(),
                      validation: (String value) {},
                    ),
                  ),
                  SizedBox(height: context.screenWidth * 0.01),
                  PrimaryBtn(
                    callback:
                        cubit.createEvent(context: context, page: EventHome()),
                    title: 'Create Event',
                  ),
                  SizedBox(height: context.screenWidth * 0.01),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
