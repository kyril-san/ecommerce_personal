// ignore_for_file: unused_import

import 'package:ecommerce_personal/const/colors.dart';
import 'package:ecommerce_personal/pages/home_page.dart';
import 'package:ecommerce_personal/pages/products_details.dart';
import 'package:ecommerce_personal/pages/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      rebuildFactor: (old, data) => true,
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        title: 'Ecommerce App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Mycolors.primary, brightness: Brightness.light),
            useMaterial3: true,
            tabBarTheme: const TabBarTheme(dividerColor: Colors.transparent),
            fontFamily: 'DMSans'),
        home: const ProductsDetailsPage(),
      ),
    );
  }
}
