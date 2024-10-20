import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_melos_widgets/widgets.dart';

class AddEvent extends StatelessWidget {
  const AddEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: context.screenWidth * 0.2),
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
                CupertinoIcons.calendar_badge_plus,
                size: context.screenWidth * 0.2,
                color: context.textColor1,
              ),
            ),
            SizedBox(height: context.screenWidth * 0.01),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Add Event',
                  style: context.bodyMedium.copyWith(color: context.primary),
                )),
            SizedBox(height: context.screenWidth * 0.03),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: context.screenWidth * 0.08),
              child: CustomTextField(
                hintText: 'Event Name',
                controller: TextEditingController(),
                validation: (String value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
