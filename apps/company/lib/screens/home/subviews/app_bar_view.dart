import 'package:company/mangers/alert_manger.dart';
import 'package:flutter/cupertino.dart';
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
          icon: Icon(
            Icons.menu,
            size: 30,
          )),
      centerTitle: true,
      title: Text(
        "SDAIA",
        style: TextStyle(
          color: context.textColor1,
          fontSize: context.titleMedium.fontSize,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            AlertManager().showQRAlert(
                context: context, title: "Yara Albouq", qr: Img.logo);
          },
          icon: Icon(Icons.qr_code, size: 40),
        ),
        const SizedBox(width: 24),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(1.0),
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
