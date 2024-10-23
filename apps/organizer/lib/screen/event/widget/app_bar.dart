import 'package:flutter/material.dart';
import 'package:my_melos_widgets/widgets.dart';

class AppBarView extends StatelessWidget implements PreferredSizeWidget {
  const AppBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1.5,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 3,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                ),
                child: Image.asset('assets/img/q_green.png'),
              ),
            ),
          ),
          Text('2024', style: context.titleSmall),
          Text('Event Name', style: context.titleSmall),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () => (),
          icon: const Icon(Icons.qr_code, size: 40),
        ),
        const SizedBox(width: 24),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
