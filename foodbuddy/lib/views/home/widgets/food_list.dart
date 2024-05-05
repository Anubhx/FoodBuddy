// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodbuddy/constants/constants.dart';
import 'package:foodbuddy/constants/uidata.dart';
import 'package:foodbuddy/views/home/widgets/category_widget.dart';
import 'package:foodbuddy/views/home/widgets/food_widget.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(foods.length, (i) {
          var food = foods[i];
          return FoodWidget(
              image: food['imageUrl'],
              title: food['title'],
              time: food['time'],
               price:food['price'] ,
               // price : food['price'].tostring(2),
              );
        }),
      ),
    );
  }
}