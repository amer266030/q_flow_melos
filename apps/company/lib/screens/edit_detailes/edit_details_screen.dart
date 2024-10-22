import 'package:company/screens/edit_detailes/edit_details_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_melos_widgets/extensions/img_ext.dart';
import 'package:my_melos_widgets/reusable_components/cards/page_header_view.dart';
import 'package:my_melos_widgets/widgets.dart';

class EditDetailsScreen extends StatelessWidget {
  const EditDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditDetailsCubit(),
      child: Builder(builder: (context) {
        final cubit = context.read<EditDetailsCubit>();
        return Scaffold(
          appBar: AppBar(),
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(24),
            child: ListView(children: [
              PageHeaderView(title: 'Update Profile'),
              Column(
                    children: [
                      BlocBuilder<EditDetailsCubit, EditDetailsState>(
                        builder: (context, state) {
                          return _ImgView();
                        },
                      ),
                      TextButton(
                          onPressed: cubit.getImage,
                          child: Text('Add Logo',
                              style: TextStyle(
                                  fontSize: context.bodySmall.fontSize,
                                  color: context.primary,
                                  fontWeight: context.titleSmall.fontWeight)))
                    ],
                  ),
            ],),
          )),
        );
      }),
    );
  }
}

class _ImgView extends StatelessWidget {
  const _ImgView({super.key, });


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            width: 140,
            height: 140,
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  elevation: 5,
                  child: ClipOval(
                      child: Image(image: Img.logo, fit: BoxFit.cover))),
            ),
          ),
        ),
      ],
    );
  }
}
