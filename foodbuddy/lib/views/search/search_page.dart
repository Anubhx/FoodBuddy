import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodbuddy/common/custom_container.dart';
import 'package:foodbuddy/constants/constants.dart';
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(preferredSize: Size.fromHeight(130.h),child: Container(height: 130,),) ,
      body: SafeArea(
        child: CustomContainer(containerContent:Container() ))
    );
  }
}