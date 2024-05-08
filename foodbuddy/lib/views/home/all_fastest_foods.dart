import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodbuddy/common/app_style.dart';
import 'package:foodbuddy/common/back_ground_container.dart';
import 'package:foodbuddy/common/reusable_text.dart';
import 'package:foodbuddy/constants/constants.dart';
import 'package:foodbuddy/constants/uidata.dart';
import 'package:foodbuddy/views/home/widgets/food_tile.dart';
import 'package:foodbuddy/views/home/widgets/food_tiles.dart';
import 'package:foodbuddy/views/home/widgets/restaurants_tile.dart';

class AllFastestFoods extends StatelessWidget {
  const AllFastestFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kPrimaryLight,
        title: ReusableText(text: "Fastest Foods ", 
        style: appStyle(13, kSecondary, FontWeight.w600 )),
      ),
     body: BackGroundContainer(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.fromLTRB(12.w, 12.h,12.w, 12.h),
            
            children: List.generate(foods.length, (i) {
              var food = foods[i];
              return FoodTiles(food: food,);
            }),
          ),
        )
    );
  }
}
