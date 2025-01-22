import 'package:fe_interview_task/locator.dart';
import 'package:fe_interview_task/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Reference size (width, height) for designs
      minTextAdapt: true, // Adapts text sizes to fit smaller devices
      splitScreenMode: true, // Adjusts for split screen scenarios
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Responsive Design',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: TextTheme(
              bodyLarge: TextStyle(fontSize: 16.sp), // Scaled text
              bodyMedium: TextStyle(fontSize: 14.sp),
            ),
          ),
          home: const Home(),
        );
      },
    );
  }
}


