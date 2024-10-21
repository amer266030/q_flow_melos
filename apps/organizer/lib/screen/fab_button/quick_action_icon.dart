import 'package:flutter/material.dart';

class QuickActionIcon extends StatelessWidget {
  const QuickActionIcon({super.key, this.icon, this.bkColor});

  final Icon? icon;
  final Color? bkColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: bkColor,
        shape: BoxShape.circle,
      ),
      clipBehavior: Clip.hardEdge,
      child: Center(child: icon),
    );
  }
}
