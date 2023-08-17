// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_personal/components/products_details/products_tab_bar.dart';
import 'package:ecommerce_personal/components/utils/text_style.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsDetailsPage extends StatefulWidget {
  const ProductsDetailsPage({super.key});

  @override
  State<ProductsDetailsPage> createState() => _ProductsDetailsPageState();
}

class _ProductsDetailsPageState extends State<ProductsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text('USD 350', style: Textsyles.money),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child:
                  Text('TMA-2\nHD WIRELESS', style: Textsyles.headerblackMont),
            ),
            SizedBox(height: 29.h),
            Expanded(child: ProductsTabbar())
          ],
        ),
      ),
    );
  }
}

AppBar appbar(BuildContext context) {
  return AppBar(
    leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(FeatherIcons.shoppingCart),
        color: Colors.black,
      )
    ],
  );
}
