import 'package:flutter/material.dart';

extension GoTo on BuildContext {
  void goTo(Widget page) {
    Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}