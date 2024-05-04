import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodbuddy/common/app_style.dart';
import 'package:foodbuddy/common/reusable_text.dart';
import 'package:foodbuddy/constants/constants.dart';

class FoodWidget extends StatelessWidget {
  const FoodWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.time,
      required this.price,
      this.onTap});

  final String image;
  final String title;
  final String time;
  final double price;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: Container(
            width: width * 0.75,
            height: 192.h,
            decoration: BoxDecoration(
              color: kLightWhite,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.w),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: SizedBox(
                          height: 112.h,
                          width: width * 0.8,
                          child: Image.network(image, fit: BoxFit.fitWidth),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                              text: title,
                              style: appStyle(12, kDark, FontWeight.w500)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ReusableText(
                                text: 'Price: ',
                                style: appStyle(10, kDark, FontWeight.w500)),

                              ReusableText(
                                text: 'RS-  ',
                                style: appStyle(10, kDark, FontWeight.w500)),    
                              ReusableText(
                                text: (price * 10).toString(),
                                style: appStyle(10, kDark, FontWeight.w500)),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                              text: 'Delivery Time',
                              style: appStyle(9, kGray, FontWeight.w500)),
                          ReusableText(
                              text: time,
                              style: appStyle(9, kGray, FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
