import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodbuddy/constants/constants.dart';
import 'package:foodbuddy/views/entrypoint.dart';
import 'package:get/get.dart';



Widget defaultHome =  MainScreen();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(375, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (context , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'FoodBuddy',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
           scaffoldBackgroundColor: kOffWhite,
           iconTheme:const IconThemeData(color: kDark),
           primarySwatch: Colors.grey,
            ),
          home: defaultHome,
        );
      },
      //child: const MyHomePage(title: 'FoodBuddy'),
    );
  }
}
