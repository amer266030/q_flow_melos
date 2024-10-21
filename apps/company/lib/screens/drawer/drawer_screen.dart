import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_melos_widgets/extensions/img_ext.dart';
import 'package:my_melos_widgets/widgets.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            AspectRatio(
                aspectRatio: 3,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 8,
                          blurStyle: BlurStyle.outer),
                    ],
                  ),
                  child: const Image(image: Img.logo),
                )),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.center,
              child: Text('SADIA',
                  style: TextStyle(
                      fontSize: context.titleMedium.fontSize,
                      fontWeight: context.titleLarge.fontWeight)),
            ),
            const SizedBox(height: 16),
            Text(
              "Job Fair 123",
              style: context.bodyLarge,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  CupertinoIcons.calendar,
                  color: context.textColor3,
                  size: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "01/01/2024 - 03/01/2024",
                  style: context.bodySmall,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  CupertinoIcons.person_3_fill,
                  color: context.textColor3,
                  size: 21,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "Total Applicants: ",
                  style: context.bodySmall,
                ),
                Text("200",
                    style: TextStyle(
                        fontSize: context.bodySmall.fontSize,
                        color: context.primary)),
              ],
            ),
            Divider(
              color: context.bg3,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(
                CupertinoIcons.circle,
              ),
              title: const Text(
                'Update Details',
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {},
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(
                CupertinoIcons.circle,
              ),
              title: const Text(
                'Privacy Policy',
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {},
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(
                CupertinoIcons.circle,
              ),
              title: const Text(
                'Dark Mode',
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {},
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(
                CupertinoIcons.circle,
              ),
              title: const Text(
                'Language',
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {},
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(
                CupertinoIcons.circle,
              ),
              title: const Text(
                'Logout',
              ),
              trailing: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      context.primary,
                      context.secondary,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.logout_outlined,
                  size: 20,
                  color: context.bg1,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
//Scaffold.of(context).openDrawer();