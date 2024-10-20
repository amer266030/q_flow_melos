import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_melos_widgets/widgets.dart';

class AddEvent extends StatelessWidget {
  const AddEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: context.screenWidth * 0.3),
              Padding(
                padding: EdgeInsets.only(left: context.screenWidth * 0.08),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Add Event', style: context.titleLarge)),
              ),
              SizedBox(height: context.screenWidth * 0.03),
              CircleAvatar(
                radius: context.screenWidth * 0.3,
                backgroundColor: context.primary,
                child: Icon(
                  Icons.person,
                  size: context.screenWidth * 0.2,
                  color: context.secondary,
                ),
              ),
              SizedBox(height: context.screenWidth * 0.01),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Add Event Picture',
                    style: context.bodyMedium.copyWith(color: context.primary),
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
                      onPressed: () {}, icon: Icon(Icons.date_range_outlined)),
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
                      onPressed: () {}, icon: Icon(Icons.date_range_outlined)),
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
                      onPressed: () {}, icon: Icon(Icons.upload_file)),
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
                      onPressed: () {}, icon: Icon(Icons.upload_file)),
                  hintText: 'Upload visitors .xlsx',
                  controller: TextEditingController(),
                  validation: (String value) {},
                ),
              ),
              SizedBox(height: context.screenWidth * 0.01),
              PrimaryBtn(
                callback: () {},
                title: 'Create Event',
              ),
              SizedBox(height: context.screenWidth * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
