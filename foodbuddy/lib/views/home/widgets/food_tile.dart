// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodbuddy/common/app_style.dart';
import 'package:foodbuddy/common/reusable_text.dart';
import 'package:foodbuddy/constants/constants.dart';
import 'package:foodbuddy/constants/uidata.dart';

class FoodTile extends StatelessWidget {
  FoodTile({super.key, required this.food});

  final dynamic food;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 8.h),
              height: 112.h,
              width: width,
              decoration: BoxDecoration(
                color: kOffWhite,
                borderRadius: BorderRadius.circular(9.r),
              ),
              child: Container(
                padding: EdgeInsets.all(4.r),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12.r)),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 100.h,
                            width: 70.w,
                            child: Image.network(food["imageUrl"],
                                fit: BoxFit.cover),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                            text: food['title'],
                            style: appStyle(12, kDark, FontWeight.w700)),
                        ReusableText(
                            text: "Deliver time: ${food['time']}",
                            style: appStyle(11, kGray, FontWeight.w400)),
                        SizedBox(
                          width: width * 0.7,
                          child: Text(
                            food['description'],
                            overflow: TextOverflow.visible,
                            style: appStyle(10, kGray, FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ReusableText(
                                  text: 'Price: ',
                                  style:
                                      appStyle(12, kPrimary, FontWeight.w500)),
                              ReusableText(
                                  text: 'RS- ',
                                  style:
                                      appStyle(12, kPrimary, FontWeight.w500)),
                              ReusableText(
                                  text: " ${food['price'] * 10}",
                                  style:
                                      appStyle(12, kPrimary, FontWeight.w500)),
                            ],
                          ),
                        )

                      ],

                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
