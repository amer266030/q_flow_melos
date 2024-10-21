import 'package:flutter/material.dart';
import 'package:my_melos_widgets/widgets.dart';

class VisitorScreen extends StatelessWidget {
  const VisitorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        expandedHeight: context.screenHeight * 0.4,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset('assets/img/test.png', fit: BoxFit.cover),
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate([
          SizedBox(height: context.screenHeight * 0.04),
          Text('Rate', style: context.titleLarge),
          SizedBox(height: context.screenHeight * 0.04),
        ]),
      )
    ]));
  }
}
