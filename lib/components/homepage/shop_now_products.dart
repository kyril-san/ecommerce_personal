// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_personal/components/utils/text_style.dart';
import 'package:ecommerce_personal/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopNowProducts extends StatelessWidget {
  const ShopNowProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 178.h,
      width: double.infinity,
      child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (ctx, index) {
            return Container(
              padding: EdgeInsets.only(left: 24.w, top: 20.w),
              margin: EdgeInsets.only(right: 15.w),
              height: 178.h,
              width: 326.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TMA-2 \nModular \nHeadPhone',
                          style: Textsyles.productsitems,
                          softWrap: true,
                        ),
                        SizedBox(height: 28.h),
                        Row(
                          children: [
                            Text(
                              'Shop Now',
                              style: Textsyles.shop,
                            ),
                            SizedBox(width: 12.w),
                            Icon(Icons.arrow_forward, color: Mycolors.primary)
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Image.asset(
                    'assets/Headphones.png',
                    height: 135.h,
                    width: 117.w,
                    fit: BoxFit.contain,
                  ))
                ],
              ),
            );
          }),
    );
  }
}
