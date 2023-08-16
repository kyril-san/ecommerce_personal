// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_personal/components/utils/text_style.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar appBar(String title) {
  return AppBar(
    leading: IconButton(onPressed: () {}, icon: Icon(FeatherIcons.menu)),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/AudioImage.png'),
        SizedBox(
          width: 7.14.w,
        ),
        Text(
          title,
          style: Textsyles.appbarTitle,
        )
      ],
    ),
    centerTitle: true,
    actions: [
      CircleAvatar(
        child: Image.asset('assets/Logo.png'),
      ),
      SizedBox(
        width: 25.w,
      )
    ],
  );
}
