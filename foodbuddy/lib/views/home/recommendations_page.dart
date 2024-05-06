import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodbuddy/common/app_style.dart';
import 'package:foodbuddy/common/back_ground_container.dart';
import 'package:foodbuddy/common/reusable_text.dart';
import 'package:foodbuddy/constants/constants.dart';
import 'package:foodbuddy/constants/uidata.dart';
import 'package:foodbuddy/views/home/widgets/food_tile.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        
        backgroundColor: kOffWhite,
        title: ReusableText(text: "Recommendation", 
        style: appStyle(13, kGray, FontWeight.w600 )),
      ),
      body: BackGroundContainer(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.fromLTRB(12.w, 12.h,12.w, 12.h),
            
            children: List.generate(foods.length, (i) {
              var food = foods[i];
              return FoodTile(food: food,);
            }),
          ),
        )
    );
  }
}
