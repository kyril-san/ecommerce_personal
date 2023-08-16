// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecommerce_personal/components/homepage/head_phones.dart';
import 'package:ecommerce_personal/components/utils/text_style.dart';
import 'package:ecommerce_personal/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Productspage extends StatefulWidget {
  const Productspage({
    super.key,
  });

  @override
  State<Productspage> createState() => _ProductspageState();
}

late TabController tabs;

List<Widget> pages = [
  HeadPhones(),
  HeadPhones(),
  HeadPhones(),
  HeadPhones(),
];

class _ProductspageState extends State<Productspage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    tabs = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32.h),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.r), topRight: Radius.circular(30.r)),
          color: Mycolors.greylight1),
      child: Column(
        children: [
          TabBar(
              controller: tabs,
              isScrollable: true,
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
              ),
              labelPadding:
                  EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
              labelStyle: Textsyles.texts,
              unselectedLabelStyle: Textsyles.textblack,
              labelColor: Colors.white,
              unselectedLabelColor: Mycolors.darkgrey,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.green,
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                  color: Mycolors.primary,
                  borderRadius: BorderRadius.circular(30.r),
                  border: Border.all(color: Colors.transparent)),
              tabs: [
                Text('Headphone'),
                Text('Headband'),
                Text('Earpads'),
                Text('Cables')
              ]),
          SizedBox(height: 20.h),
          Expanded(child: TabBarView(controller: tabs, children: pages))
        ],
      ),
    );
  }
}
