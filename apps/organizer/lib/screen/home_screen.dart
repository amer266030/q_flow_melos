import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:my_melos_widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        children: [
          FloatingActionButton.small(
            heroTag: null,
            child: const Icon(Icons.edit),
            onPressed: () {},
          ),
          FloatingActionButton.small(
            heroTag: null,
            child: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(width: context.screenWidth * 0.02),
                Image.asset('assets/img/q_green.png',
                    width: context.screenWidth * 0.2,
                    height: context.screenWidth * 0.2),
                SizedBox(width: context.screenWidth * 0.01),
                Text('Tuwaiq Academy', style: context.titleMedium)
              ],
            ),
            SizedBox(height: context.screenWidth * 0.001),
            Divider()
          ],
        ),
      ),
    );
  }
}
