import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_melos_widgets/widgets.dart';

class OpenApplyingView extends StatelessWidget {
  const OpenApplyingView({
    super.key,
    required this.onOpen,
    required this.value,
  });

  final Function(bool)? onOpen;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Open Applying',
            style: TextStyle(
              fontSize: context.bodyLarge.fontSize,
              fontWeight: FontWeight.bold,
              color: context.textColor1,
            ),
          ),
          Switch(
            value: value,
            onChanged: onOpen,
          ),
        ],
      ),
    );
  }
}
