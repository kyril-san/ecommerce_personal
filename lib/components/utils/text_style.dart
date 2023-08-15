// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_personal/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Textsyles {
  static final texts = TextStyle(
      color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.w400);

  static final header = TextStyle(
      color: Colors.white, fontSize: 51.048.sp, fontWeight: FontWeight.w700);

  static final subheader = TextStyle(
      color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.w700);
  static final buttonstyle = TextStyle(
      color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w700);

  static final underlinebutton = TextStyle(
      decoration: TextDecoration.underline,
      decorationColor: Mycolors.primary,
      decorationThickness: 2,
      color: Mycolors.primary,
      fontWeight: FontWeight.w700);
}
