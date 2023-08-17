// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:ecommerce_personal/components/homepage/featured_product.dart';
import 'package:ecommerce_personal/components/homepage/home_page_reuseables.dart';
import 'package:ecommerce_personal/components/products_details/products_reuseables.dart';
import 'package:ecommerce_personal/components/signupcomp/sign_up_reuseables.dart';
import 'package:ecommerce_personal/components/utils/text_style.dart';
import 'package:ecommerce_personal/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsOverwiewPage extends StatefulWidget {
  const ProductsOverwiewPage({super.key});

  @override
  State<ProductsOverwiewPage> createState() => _ProductsOverwiewPageState();
}

class _ProductsOverwiewPageState extends State<ProductsOverwiewPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(left: 24.w),
            child: SizedBox(
              height: 391.h,
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return imageBox(context);
                  })),
            ),
          ),
          SizedBox(height: 40.h),
          Padding(
            padding: EdgeInsets.only(left: 24.w),
            child: Text('Review (102)', style: Textsyles.greetings),
          ),
          SizedBox(height: 25.h),
          Padding(
            padding: EdgeInsets.only(left: 24.w),
            child: SizedBox(
              height: 458.h,
              width: double.infinity,
              child: ListView.builder(
                  padding: EdgeInsets.only(right: 23.w),
                  itemCount: 3,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return reviews(context);
                  })),
            ),
          ),
          SizedBox(height: 40.h),
          Center(child: Text('See All Reviews', style: Textsyles.textdarkgrey)),
          SizedBox(height: 33.h),
          Container(
            color: Mycolors.greylight1,
            height: 319.h,
            width: double.infinity,
            padding: EdgeInsets.only(left: 24.w, top: 28.h),
            child: Column(
              children: [
                featuredandseeall(context, 'Another Product'),
                SizedBox(height: 20.h),
                FeaturedProduct()
              ],
            ),
          ),
          SizedBox(height: 30.h),
          Center(child: reuseableButton(context, 'Add to Cart')),
          SizedBox(height: 30.h),
        ]),
      ),
    );
  }
}
