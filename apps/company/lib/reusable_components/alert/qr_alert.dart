import 'package:flutter/material.dart';
import 'package:my_melos_widgets/extensions/img_ext.dart';
import 'package:my_melos_widgets/theme_data/extensions/text_style_ext.dart';
import 'package:my_melos_widgets/widgets.dart';

class QRAlert extends StatelessWidget {
  final ImageProvider qr;
  final String title;

  const QRAlert({
    Key? key,
    required this.qr,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(32),
                  decoration: BoxDecoration(
                      color: context.bg1,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image(image: Img.logo)),
              Container(
                padding: EdgeInsets.all(24),
                width: context.screenWidth * 0.9,
                height: context.screenWidth * 0.2,
                decoration: BoxDecoration(
                    border: Border(top: BorderSide(color: context.bg3)),
                    color: context.bg1,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Text(title,
                        style: TextStyle(
                            fontSize: context.titleSmall.fontSize,
                            fontWeight: context.titleSmall.fontWeight)),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
