// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:ecommerce_personal/components/homepage/products.dart';
import 'package:ecommerce_personal/components/homepage/home_page_reuseables.dart';
import 'package:ecommerce_personal/components/signupcomp/sign_up_reuseables.dart';
import 'package:ecommerce_personal/components/utils/text_style.dart';
import 'package:ecommerce_personal/const/colors.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar('Audio'),
      body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Text('Hi Andrea', style: Textsyles.greetings),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Text('What are you looking for today?',
                    style: Textsyles.welcomeHeading),
              ),
              SizedBox(height: 25.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: reuseableTextformfield(
                    context, 'Search headphone', FeatherIcons.search),
              ),
              SizedBox(height: 25.h),
              Expanded(child: Productspage()),
            ],
          )),
    );
  }
}
