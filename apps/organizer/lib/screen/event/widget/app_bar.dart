import 'package:flutter/material.dart';
import 'package:my_melos_widgets/widgets.dart';

class AppBarView extends StatelessWidget implements PreferredSizeWidget {
  const AppBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: const Icon(
            Icons.menu,
            size: 30,
          )),
      centerTitle: true,
      title: Column(
        children: [
          AspectRatio(
            aspectRatio: 5.5,
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
              child: const Image(image: Img.logo),
            ),
          ),
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
          child: Divider(color: context.bg3),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
