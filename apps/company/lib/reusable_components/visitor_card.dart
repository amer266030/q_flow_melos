import 'package:company/model/user/visitor.dart';
import 'package:company/reusable_components/button/book_mark_btn.dart';
import 'package:company/reusable_components/visitor_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_melos_widgets/widgets.dart';
import 'package:flutter/material.dart';

class VisitorCard extends StatelessWidget {
  const VisitorCard({
    super.key,
    required this.visitor,
    required this.toggleBookmark,
    required this.isBookmarked,
  });
  final Visitor visitor;
  final bool isBookmarked;
  final VoidCallback toggleBookmark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          color: context.bg2,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child:
                            AspectRatio(aspectRatio: 1, child: VisitorAvatar()),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(visitor.fName ?? '',
                                    style: context.bodyMedium,
                                    maxLines: 1,
                                    softWrap: true),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(visitor.lName ?? '',
                                    style: context.bodyMedium,
                                    maxLines: 1,
                                    softWrap: true),
                              ],
                            ),
                            Text(visitor.id ?? '',
                                style: TextStyle(
                                    fontSize: context.bodySmall.fontSize,
                                    color: context.textColor1),
                                maxLines: 3,
                                softWrap: true),
                            Text('Front end',
                                style: TextStyle(
                                    fontSize: context.bodySmall.fontSize,
                                    color: context.textColor1),
                                maxLines: 3,
                                softWrap: true),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              BookMarkbtn(
                  isBookmarked: isBookmarked, toggleBookmark: toggleBookmark)
            ],
          ),
        ),
      ),
    );
  }
}
