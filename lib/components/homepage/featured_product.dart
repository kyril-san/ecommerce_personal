import 'package:ecommerce_personal/components/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedProduct extends StatelessWidget {
  const FeaturedProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (ctx, index) {
            return Container(
              height: 183.h,
              width: 155.w,
              margin: EdgeInsets.only(right: 15.w, bottom: 24.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      'assets/Headphones.png',
                      height: 125.h,
                      width: 125.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TMA-2 HD Wireless',
                          style: Textsyles.textblack,
                        ),
                        Text(
                          'USD 350',
                          style: Textsyles.textblacksmall,
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
