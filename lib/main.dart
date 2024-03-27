
// import 'package:app_skill_harvest/splash_screen_task.dart';
//import 'package:app_skill_harvest/splash_screen_task.dart';
//import 'package:app_skill_harvest/study_plan.dart';
//import 'package:app_skill_harvest/phone_number_screen.dart';

// import 'package:app_skill_harvest/LoginPage.dart';
//import 'package:app_skill_harvest/sign_up_page.dart';
import 'package:app_skill_harvest/splash_screen_task.dart';
//import 'package:app_skill_harvest/splash_screen_task.dart';
import 'package:flutter/material.dart';

// import 'sign_up_page.dart';

void main() {
  runApp(const ChristTech());
}

class ChristTech extends StatelessWidget {
  const ChristTech({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue,
        primary: Colors.white,
        secondary: const Color.fromARGB(243, 6, 29, 232)),
        useMaterial3: true,
      ),
      home:  const SplashScreenTask() //const SplashScreenTask(),
    );
  }
}
