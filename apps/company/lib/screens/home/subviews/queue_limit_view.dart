import 'package:flutter/material.dart';
import 'package:my_melos_widgets/widgets.dart';
import 'package:numberpicker/numberpicker.dart';

class QueueLimitView extends StatelessWidget {
  const QueueLimitView({
    super.key,
    required this.onChange,
    required this.value,
  });

  final Function(int) onChange;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Queue Limit',
            style: TextStyle(
              fontSize: context.bodyLarge.fontSize,
              fontWeight: FontWeight.bold,
              color: context.textColor1,
            ),
          ),
          SizedBox(width: 16),
          Container(
            width: context.screenWidth * 0.2,
            child: NumberPicker(
              step: 5,
              selectedTextStyle: TextStyle(
                  color: context.secondary,
                  fontSize: context.bodyLarge.fontSize),
              itemWidth: 35,
              itemCount: 3,
              value: value,
              textStyle: context.bodySmall,
              minValue: 10,
              maxValue: 80,
              onChanged: onChange,
              axis: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
