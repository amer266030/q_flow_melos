import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_melos_widgets/widgets.dart';

class BookMarkbtn extends StatelessWidget {
  const BookMarkbtn({
    super.key,
    required this.isBookmarked,
    required this.toggleBookmark,
  });
  final bool isBookmarked;
  final Function()? toggleBookmark;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: toggleBookmark,
      icon: Icon(
        isBookmarked ? CupertinoIcons.bookmark_fill : CupertinoIcons.bookmark,
        size: context.titleMedium.fontSize,
        color: isBookmarked ? context.primary : context.textColor2,
      ),
    );
  }
}
