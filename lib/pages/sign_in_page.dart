// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_personal/components/signupcomp/reuseables.dart';
import 'package:ecommerce_personal/components/utils/text_style.dart';
import 'package:ecommerce_personal/pages/Sign_up_page.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
            reuseableText(context, Textsyles.subheader,
                text: 'Forgot Password'),
            SizedBox(height: 32.h),
            reuseableButton(context, 'Sign In'),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                reuseableText(context, Textsyles.texts,
                    text: 'Didn\'t have any account? '),
                GestureDetector(
                  child: Text('Sign Up here', style: Textsyles.underlinebutton),
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SignUppage())),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
