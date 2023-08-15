// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_personal/components/signupcomp/reuseables.dart';
import 'package:ecommerce_personal/components/utils/text_style.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUppage extends StatelessWidget {
  const SignUppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/BackgroundImage.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            reuseableText(context, Textsyles.header, text: 'Audio'),
            SizedBox(height: 7.h),
            reuseableText(context, Textsyles.subheader,
                text: 'It\'s modular and designed to last'),
            SizedBox(height: 247),
            reuseableTextformfield(context, 'Email', FeatherIcons.mail),
            SizedBox(height: 20.h),
            reuseableTextformfield(context, 'Password', FeatherIcons.lock),
            SizedBox(height: 20.h),
            reuseableButton(context, 'Sign In'),
            SizedBox(height: 42.h),
            threewaysigninbutton(context),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                reuseableText(context, Textsyles.texts,
                    text: 'if you have any account? '),
                GestureDetector(
                  child: Text('Sign in here', style: Textsyles.underlinebutton),
                  onTap: () => Navigator.pop(context),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
