import 'package:flutter/cupertino.dart';
import 'package:my_melos_widgets/widgets.dart';

class VisitorAvatar extends StatelessWidget {
  const VisitorAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              context.primary,
              context.primary.withOpacity(0.9),
              context.primary.withOpacity(0.7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [BoxShadow(blurRadius: 1)]),
      child: Icon(
        CupertinoIcons.person_solid,
        color: context.bg1,
        size: 35,
      ),
    );
  }
}
