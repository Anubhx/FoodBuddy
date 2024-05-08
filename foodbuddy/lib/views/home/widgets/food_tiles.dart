import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodbuddy/common/app_style.dart';
import 'package:foodbuddy/common/reusable_text.dart';
import 'package:foodbuddy/constants/constants.dart';
import 'package:foodbuddy/constants/uidata.dart';

class FoodTiles extends StatelessWidget {
  FoodTiles({super.key, required this.food});

  final dynamic food;
  //static double prices = foods[0]['price'];
  // double prices = food['price'];

  // Rest of the code...

  @override
  Widget build(BuildContext context) {
    double prices = food['price'] * 10;
    return GestureDetector(
        onTap: () {},
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 8.h),
              height: 70.h,
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
                            height: 70.h,
                            width: 70.w,
                            child: Image.network(food["imageUrl"],
                                fit: BoxFit.cover),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              padding: EdgeInsets.only(left: 6.w, bottom: 2.h),
                              color: kGray.withOpacity(0.6),
                              height: 16.h,
                              width: width,
                              child: RatingBarIndicator(
                                rating: 5,
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star,
                                  color: kSecondary,
                                ),
                                itemCount: 5,
                                itemSize: 14.0,
                              ),
                            ),
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
                            style: appStyle(11, kDark, FontWeight.w400)),
                        ReusableText(
                            text: "Deliver time: ${food['time']}",
                            style: appStyle(11, kGray, FontWeight.w400)),
                        SizedBox(
                          width: width * 0.7,
                          height: 15.h,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: food['additives'].length,
                              itemBuilder: (context, i) {
                                var additive = food['additives'][i];
                                return Container(
                                  margin: EdgeInsets.only(right: 6.w),
                                  decoration: BoxDecoration(
                                    color: kPrimaryLight,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(9.r),
                                    ),
                                  ),
                                  child: Center(
                                    child: Padding(
                                        padding: EdgeInsets.all(2.h),
                                        child: ReusableText(
                                          text: additive['title'],
                                          style: appStyle(
                                              8, kGray, FontWeight.w500),
                                        )),
                                  ),
                                );
                              }),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: 5.w,
              top: 6.h,
              child: Container(
                width: 60.w,
                height: 19.h,
                decoration: BoxDecoration(
                  color: kPrimary,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: ReusableText(
                      text: "Rs ${prices.toString()}",
                      style: appStyle(12, kLightWhite, FontWeight.bold)),
                ),
              ),
            ),
            Positioned(
              right: 75.w,
              top: 6.h,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 22.w,
                  height: 22.h,
                  decoration: BoxDecoration(
                    color: kSecondary,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Center(
                    child: Icon(
                      MaterialCommunityIcons.cart_plus,
                      color: kLightWhite,
                      size: 15.h,
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
