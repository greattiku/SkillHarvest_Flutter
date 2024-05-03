

// import 'package:app_skill_harvest/Slivers/sliver_app_bar.dart';


import 'package:app_skill_harvest/Course/product_design_course.dart';




import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



void main() {
  runApp(const ProviderScope(child: ChristTech()));
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
      home:  const ProductDesignScreen() //const SplashScreenTask(),
    );
  }
}

