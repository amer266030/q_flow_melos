import 'package:company/screens/drawer/drawer_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_melos_widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          centerTitle: true,
          title: Column(
            children: [
              AspectRatio(
                  aspectRatio: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 4,
                            blurStyle: BlurStyle.outer),
                      ],
                    ),
                    child: Image(image: Img.logo),
                  )),
              Text("SDAIA",
                  style: TextStyle(
                      color: context.textColor1,
                      fontSize: context.titleSmall.fontSize)),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () => (),
              icon: Icon(CupertinoIcons.qrcode, size: 40),
            ),
            SizedBox(
              width: 24,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                color: context.bg3,
              ),
            ),
          ),
        ),
        drawer: DrawerScreen(),
        body: SafeArea(
            child: ListView(
          children: [
            TabBar(tabs: [],)
          ],
        )),
      ),
    );
  }
}
