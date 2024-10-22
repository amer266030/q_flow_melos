import 'package:company/model/user/visitor.dart';
import 'package:company/reusable_components/visitor_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_melos_widgets/widgets.dart';

class SwiperCard extends StatelessWidget {
  const SwiperCard({
    super.key,
    required this.visitor,
  });
  final Visitor visitor;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
        child: SizedBox(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              AspectRatio(aspectRatio: 2.3, child: VisitorAvatar()),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(visitor.fName ?? '',
                      style: TextStyle(
                          fontSize: context.titleSmall.fontSize,
                          fontWeight: context.titleSmall.fontWeight),
                      maxLines: 1,
                      softWrap: true),
                  SizedBox(
                    width: 6,
                  ),
                  Text(visitor.lName ?? '',
                      style: TextStyle(
                          fontSize: context.titleSmall.fontSize,
                          fontWeight: context.titleSmall.fontWeight),
                      maxLines: 1,
                      softWrap: true),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(visitor.id ?? '',
                  style: TextStyle(
                      fontSize: context.bodyLarge.fontSize,
                      color: context.textColor1),
                  maxLines: 3,
                  softWrap: true),
            ],
          ),
        ));
  }
}
