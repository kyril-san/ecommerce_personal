// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_personal/components/utils/text_style.dart';
import 'package:ecommerce_personal/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

imageBox(BuildContext context) {
  return Container(
    height: 391.h,
    width: 285.w,
    padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 52.38.h),
    margin: EdgeInsets.only(right: 20.w),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r), color: Mycolors.greylight1),
    child: Image.asset(
      'assets/Headphones.png',
      fit: BoxFit.contain,
    ),
  );
}

reviews(BuildContext context) {
  return ListTile(
    enabled: false,
    isThreeLine: true,
    contentPadding: EdgeInsets.zero,
    leading: CircleAvatar(child: Image.asset('assets/Logo.png')),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(child: Text('Madelina', style: Textsyles.greetings)),
            Text('1 Month ago', style: Textsyles.textdarkgreysmall),
          ],
        ),
        RatingBar.builder(
            allowHalfRating: true,
            initialRating: 4.0,
            itemSize: 20,
            itemBuilder: ((context, index) {
              return Icon(Icons.star, color: Mycolors.accent);
            }),
            onRatingUpdate: (onRatingUpdate) {}),
      ],
    ),
    subtitle: Padding(
      padding: EdgeInsets.only(top: 15.h),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        style: Textsyles.textblack,
        maxLines: 4,
      ),
    ),
  );
}
