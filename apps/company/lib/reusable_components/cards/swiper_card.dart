import 'package:company/model/user/visitor.dart';
import 'package:company/reusable_components/visitor_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_melos_widgets/widgets.dart';

class VisitorAvatarControl extends StatelessWidget {
  const VisitorAvatarControl({
    required this.visitor,
    super.key,
  });
  final Visitor visitor;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
        child: SizedBox(
          child: Column(
            children: [
              AspectRatio(aspectRatio: 2, child: VisitorAvatar()),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 8,
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
              Text(visitor.id ?? '',
                  style: TextStyle(
                      fontSize: context.bodyLarge.fontSize,
                      color: context.textColor1),
                  maxLines: 3,
                  softWrap: true),
              Text('Front end developer',
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
