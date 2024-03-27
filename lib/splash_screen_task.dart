
// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:app_skill_harvest/constant.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_skill_harvest/study_plan.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';





class SplashScreenTask extends StatefulWidget {
  const SplashScreenTask({super.key});

  @override
  State<SplashScreenTask> createState() => _SplashScreenTaskState();
}

class _SplashScreenTaskState extends State<SplashScreenTask> {
  @override
  void initState(){
    loadDelay();
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }




void loadDelay(){
  Future.delayed(const Duration(seconds: 5),(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
      return const StudyPlan();
    }));
  });
}


 @override
  Widget build(BuildContext context) {
    return   Scaffold(
    body: SafeArea(
     child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                AnimatedTextKit(
                  animatedTexts: [
                      TyperAnimatedText(
                      'HeyBuddy',
                      textStyle: const TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 5, 21, 235)
                      ),
                     speed: const Duration(milliseconds:200),
                    ),
                  ],
                  
                  totalRepeatCount: 1,
                ),

           
           const   Gap(1),

                  AnimatedTextKit(
                  animatedTexts: [
                      WavyAnimatedText(
                      'Your Personal Buddy',
                      textStyle: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 10, 169, 243)
                      ),
                   speed: const Duration(milliseconds:200),
                    ),
                  ],
                  
                  totalRepeatCount: 1,
                ),
        
          ]
        ),
      ),
    )
    );
  }
}

 
