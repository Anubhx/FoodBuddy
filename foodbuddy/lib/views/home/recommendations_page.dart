import 'package:flutter/material.dart';
import 'package:foodbuddy/common/app_style.dart';
import 'package:foodbuddy/common/reusable_text.dart';
import 'package:foodbuddy/constants/constants.dart';

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
      body: const Center(
        child: Text('All Recommendation Restaurants'),
      ),
    );
  }
}
