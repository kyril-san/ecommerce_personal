// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecommerce_personal/components/utils/text_style.dart';
import 'package:ecommerce_personal/const/colors.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

reuseableText(BuildContext context, TextStyle style, {String text = ''}) {
  return Text(
    text,
    style: style,
  );
}

reuseableTextformfield(BuildContext context,
    [String hint = '', IconData icon = FeatherIcons.activity]) {
  return Container(
    width: 326.w,
    height: 50.h,
    padding: EdgeInsets.symmetric(horizontal: 15.w),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r), color: Colors.white),
    child: Row(
      children: [
        Icon(icon, color: Mycolors.grey),
        SizedBox(width: 12.w),
        Expanded(
          child: TextFormField(
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 14.sp, color: Colors.black),
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(fontSize: 14.sp, color: Mycolors.grey),
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none),
          ),
        )
      ],
    ),
  );
}

reuseableButton(
  BuildContext context,
  String text,
) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Mycolors.primary,
          fixedSize: Size(326.w, 50.h),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r))),
      onPressed: () {},
      child: Text(text, style: Textsyles.buttonstyle));
}

threewaysigninbutton(BuildContext context) {
  return Container(
    // height: 52.h,
    margin: EdgeInsets.symmetric(horizontal: 94.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        clickiconbutton(context, 'assets/apple.png'),
        clickiconbutton(context, 'assets/facebook2.webp'),
        clickiconbutton(context, 'assets/Google.png')
      ],
    ),
  );
}

clickiconbutton(BuildContext context, [String image = 'assets/apple.png']) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 52.h,
      width: 52.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.4.r), color: Colors.white),
      child: Center(
        child: Image.asset(
          image,
          fit: BoxFit.contain,
          // height: 20.8.h,
          // width: 20.8.w,
        ),
      ),
    ),
  );
}
