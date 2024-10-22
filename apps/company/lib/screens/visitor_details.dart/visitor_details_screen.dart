import 'package:company/reusable_components/button/book_mark_btn.dart';
import 'package:company/reusable_components/visitor_avatar.dart';
import 'package:company/screens/visitor_details.dart/visitor_details_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_melos_widgets/widgets.dart';

class VisitorDetailsScreen extends StatelessWidget {
  const VisitorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VisitorDetailsCubit(),
      child: Builder(builder: (context) {
        final cubit = context.read<VisitorDetailsCubit>();
        return Scaffold(
          appBar: AppBar(
            actions: [BookMarkbtn(isBookmarked: false, toggleBookmark: () {})],
          ),
          body: SafeArea(
              child: Padding(
            padding: EdgeInsets.all(16),
            child: ListView(
              children: [
                Row(
                  children: [
                    Container(
                        width: context.screenWidth * 0.18,
                        height: context.screenHeight * 0.1,
                        child: VisitorAvatar()),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Yara Albouq",
                            style: TextStyle(
                                fontSize: context.titleSmall.fontSize,
                                fontWeight: context.titleMedium.fontWeight)),
                        Text(
                          "123456",
                          style: context.titleSmall,
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.doc_person_fill,
                          size: 40,
                          color: context.secondary,
                        ))
                  ],
                )
              ],
            ),
          )),
        );
      }),
    );
  }
}
