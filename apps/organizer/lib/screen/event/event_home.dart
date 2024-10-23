import 'package:flutter/material.dart';

import 'widget/app_bar.dart';

class EventHome extends StatelessWidget {
  const EventHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [Text('Event')],
          ),
        ),
      ),
    );
  }
}
