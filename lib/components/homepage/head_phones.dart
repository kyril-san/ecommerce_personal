// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:ecommerce_personal/components/homepage/featured_product.dart';
import 'package:ecommerce_personal/components/homepage/home_page_reuseables.dart';
import 'package:ecommerce_personal/components/homepage/shop_now_products.dart';
import 'package:ecommerce_personal/components/utils/text_style.dart';
import 'package:ecommerce_personal/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeadPhones extends StatelessWidget {
  const HeadPhones({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.only(left: 24.w),
      child: Column(children: [
        ShopNowProducts(),
        SizedBox(height: 20.h),
        featuredandseeall(context, 'Featured Products'),
        SizedBox(height: 20.h),
        FeaturedProduct()
      ]),
    );
  }
}
