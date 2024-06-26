import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodbuddy/common/app_style.dart';
import 'package:foodbuddy/common/back_ground_container.dart';
import 'package:foodbuddy/common/reusable_text.dart';
import 'package:foodbuddy/constants/constants.dart';
import 'package:foodbuddy/constants/uidata.dart';
import 'package:foodbuddy/views/home/widgets/restaurants_tile.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kPrimaryLight,
          title: ReusableText(
              text: "Nearby Restaurants",
              style: appStyle(13, kSecondary, FontWeight.w600)),
        ),
        body: BackGroundContainer(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.fromLTRB(12.w, 12.h, 12.w, 12.h),
            children: List.generate(restaurants.length, (i) {
              var restaurant = restaurants[i];
              return ResturantTile(
                restaurant: restaurant,
              );
            }
            ),
          ),
        )
        );
  }
}
