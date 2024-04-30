import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodbuddy/common/app_style.dart';
import 'package:foodbuddy/common/reusable_text.dart';
import 'package:foodbuddy/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      height: 110.h,
      width: width,
      color: kOffWhite,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              maxRadius: 25.r,
              backgroundColor: kSecondary,
              backgroundImage: const NetworkImage(
                  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                      text: "Deliver to",
                      style: appStyle(13, kSecondary, FontWeight.w600)),
                  SizedBox(
                    width: width * 0.65,
                    child: Text(
                        "301 C-198, Newtown, Kolkata, West Bengal, 700156",
                        overflow: TextOverflow.ellipsis,
                        style: appStyle(11, kGrayLight, FontWeight.normal)),
                  ),
                  const Text(
                    "🌤️",
                    style: TextStyle(
                      color: kGrayLight,
                      fontSize: 35,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
