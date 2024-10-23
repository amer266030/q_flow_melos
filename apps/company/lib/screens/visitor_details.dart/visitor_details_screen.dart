import 'package:company/mangers/alert_manger.dart';
import 'package:company/model/enum/tech_skill.dart';
import 'package:company/model/enum/visitor_rating.dart';
import 'package:company/reusable_components/button/book_mark_btn.dart';
import 'package:company/reusable_components/visitor_avatar.dart';
import 'package:company/screens/visitor_details.dart/subviews/social_media.dart';
import 'package:company/screens/visitor_details.dart/visitor_details_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_melos_widgets/utils/validations.dart';
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
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: BookMarkbtn(isBookmarked: false, toggleBookmark: () {}),
              )
            ],
          ),
          body: SafeArea(
              child: Padding(
            padding: EdgeInsets.all(16),
            child: ListView(
              children: [
                BlocBuilder<VisitorDetailsCubit, VisitorDetailsState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                                width: context.screenWidth * 0.19,
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
                                        fontWeight:
                                            context.titleMedium.fontWeight)),
                                Text(
                                  "123456",
                                  style: context.bodyLarge,
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                  onPressed: () {
                                    AlertManager().showImageAlert(
                                      context: context,
                                      image: Img.cv,
                                      withDismiss: true,
                                    );
                                  },
                                  icon: Icon(
                                    CupertinoIcons.doc_person_fill,
                                    size: 35,
                                    color: context.secondary,
                                  )),
                            )
                          ],
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Wrap(
                            spacing: 8.0,
                            runSpacing: 4.0,
                            children: cubit.skills
                                .map((skill) => Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                              color: context.primary)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(skill.value,
                                            style: TextStyle(
                                                fontSize:
                                                    context.bodySmall.fontSize,
                                                color: context.textColor1)),
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                        Divider(color: context.bg3),
                        SocialMediaView(cubit: cubit),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Rating',
                            style: TextStyle(
                                fontSize: context.bodyLarge.fontSize,
                                fontWeight: context.titleSmall.fontWeight)),
                        SizedBox(
                          height: 10,
                        ),
                        ...VisitorRating.values.map((rating) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              children: [
                                VisitorRatingBuild(
                                  title: rating.value,
                                  selectedRating:
                                      cubit.ratings[rating]?.toInt() ?? 0,
                                  setRating: (value) {
                                    cubit.setRating(rating, value);
                                  },
                                ),
                                Divider()
                              ],
                            ),
                          );
                        }).toList(),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Comments',
                            style: TextStyle(
                                fontSize: context.bodyLarge.fontSize,
                                fontWeight: context.titleSmall.fontWeight)),
                        CustomTextField(
                          hintText: 'Comments',
                          controller: cubit.commentController,
                          validation: Validations.name,
                          borderRadius: 40,
                          min: 6,
                          max: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: SecondaryBtn(
                                    callback: () {
                                      AlertManager().showDefaultAlert(
                                          context: context,
                                          title: "Next Candidate",
                                          message:
                                              "Are you sure candidate NOT exist?",
                                          onConfirm: () {},
                                          onCancel: () {},
                                          secondaryBtnText: 'NOT Exist',
                                          primaryBtnText: 'Cancel');
                                    },
                                    title: "Not Exist")),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: PrimaryBtn(
                                  callback: () {
                                    AlertManager().showDefaultAlert(
                                        context: context,
                                        title: "Next Candidate",
                                        message:
                                            "Are you sure you want go to next candidate ?",
                                        onConfirm: () {},
                                        onCancel: () {},
                                        secondaryBtnText: 'Cancel',
                                        primaryBtnText: 'Next');
                                  },
                                  title: 'Next'),
                            )
                          ],
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
          )),
        );
      }),
    );
  }
}
