import 'package:flutter/material.dart';
import 'package:my_melos_widgets/reusable_components/buttons/primary_btn.dart';
import 'package:my_melos_widgets/theme_data/extensions/text_style_ext.dart';
import 'package:my_melos_widgets/widgets.dart';

class CustomAlert extends StatelessWidget {
  final String title;
  final String secondaryBtnText;
  final String primaryBtnText;
  final String message;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const CustomAlert({
    Key? key,
    required this.title,
    required this.secondaryBtnText,
    required this.primaryBtnText,
    required this.message,
    required this.onConfirm,
    required this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(title,
            style: TextStyle(
                fontSize: context.titleSmall.fontSize,
                fontWeight: context.titleSmall.fontWeight)),
      ),
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          message,
          style: context.bodyLarge,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: SecondaryBtn(
                      callback: onCancel, title: secondaryBtnText)),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: PrimaryBtn(callback: onConfirm, title: primaryBtnText),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
