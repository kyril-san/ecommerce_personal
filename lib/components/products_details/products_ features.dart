// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_personal/components/signupcomp/sign_up_reuseables.dart';
import 'package:ecommerce_personal/components/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsFeaturesPage extends StatefulWidget {
  const ProductsFeaturesPage({super.key});

  @override
  State<ProductsFeaturesPage> createState() => _ProductsFeaturesPageState();
}

class _ProductsFeaturesPageState extends State<ProductsFeaturesPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: ListView(
            physics: ScrollPhysics(),
            children: [
              SizedBox(
                height: 610.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    reuseableText(context, Textsyles.headersblack,
                        text: 'Highly Detailed Audio'),
                    SizedBox(height: 13.h),
                    Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                        style: Textsyles.greetings),
                    SizedBox(height: 24.h),
                    Expanded(
                        child: ListView.builder(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shrinkWrap: true,
                            itemCount: 2,
                            itemBuilder: ((context, index) =>
                                productCard(context))))
                  ],
                ),
              ),
              SizedBox(height: 27.h),
              reuseableButton(context, 'Add To Cart'),
              SizedBox(height: 30.h),
            ],
          ),
        ));
  }
}

productCard(BuildContext ctx) {
  return SizedBox(
    height: 122.h,
    width: 326.w,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100.h,
          width: 99.w,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(5.r)),
          child: Image.asset('assets/Headphones.png', fit: BoxFit.contain),
        ),
        SizedBox(width: 14.w),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('APTX HD WIRELESS \nAUDIO', style: Textsyles.headersblack),
            SizedBox(height: 8.h),
            Text(
                'The APTX HD codec transmits 24-bit hi-res audio equal to or better than CD quality',
                style: Textsyles.textblack)
          ],
        ))
      ],
    ),
  );
}
