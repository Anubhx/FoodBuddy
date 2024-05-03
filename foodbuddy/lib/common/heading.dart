import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodbuddy/common/app_style.dart';
import 'package:foodbuddy/common/reusable_text.dart';
import 'package:foodbuddy/constants/constants.dart';
import 'package:get/get.dart';

class Heading extends StatelessWidget {
  const Heading({super.key, required this.text, this.onTap});
final String text;
final void Function() ? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding: EdgeInsets.only(top: 10.h),
          child: ReusableText(text: text, style: 
          appStyle(16, kDark, FontWeight.bold)),
          ),
          GestureDetector(
            onTap: onTap,
            child: Icon(
              AntDesign.appstore1,
              color: kSecondary,
              size: 20.sp,
            ),
          )
        ],
      ),
    );
  }
}