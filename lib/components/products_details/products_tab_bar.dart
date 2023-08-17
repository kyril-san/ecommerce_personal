// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecommerce_personal/components/products_details/products_overview.dart';
import 'package:ecommerce_personal/components/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsTabbar extends StatefulWidget {
  const ProductsTabbar({super.key});

  @override
  State<ProductsTabbar> createState() => _ProductsTabbarState();
}

late TabController tabs;

List<Widget> pages = [
  ProductsOverwiewPage(),
  ProductsOverwiewPage(),
  ProductsOverwiewPage(),
];

class _ProductsTabbarState extends State<ProductsTabbar>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    tabs = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 25.w),
          child: TabBar(
            controller: tabs,
            isScrollable: true,
            labelStyle: Textsyles.greetings,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: Textsyles.greetings,
            labelPadding: EdgeInsets.only(bottom: 6.h, right: 34.w),
            indicatorPadding: EdgeInsets.symmetric(horizontal: 24.w),
            tabs: [
              Text('Overview'),
              Text('Features'),
              Text('Specifications'),
            ],
          ),
        ),
        SizedBox(height: 29.h),
        Expanded(child: TabBarView(controller: tabs, children: pages))
      ],
    );
  }
}
