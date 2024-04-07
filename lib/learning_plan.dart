
import 'package:app_skill_harvest/Course/courses.dart';
import 'package:app_skill_harvest/core/util/app_image.dart';
import 'package:app_skill_harvest/progress_plan.dart';

import 'package:flutter/material.dart';


import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class LearningPlan extends StatelessWidget {
  const LearningPlan({
    super.key,
    
  });



  @override
  Widget build(BuildContext context) {
    

    final double screenWidth = MediaQuery.of(context).size.width;
    // final double screenHeight = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: WelcomeStack(screenWidth: screenWidth),
          ),
          SizedBox(
            width: screenWidth,
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const PlaceCard();
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Text(
              "Learning Plan",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
         Container(
          margin: const EdgeInsets.only(left: 15,right: 15),
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        width: screenWidth,
        height: 120,
        
        decoration:  BoxDecoration(
        //  border: const Border(bottom: BorderSide(width:2.0)),
          boxShadow:[
              BoxShadow(color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3)),
                    const BoxShadow(
                    color: Colors.transparent,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3)), ],
          color: Colors.white,borderRadius: const BorderRadius.all(Radius.circular(15))),
           child: const Column(
             children: [
               CircularProgressPlan(
                title: "Packaging Design",
                        totalVideos: 48,
                        coveredVideos: 30,
                     ),
               
                     Gap(15),
                 CircularProgressPlan(
                  title: "Product Design",
                        totalVideos: 48,
                        coveredVideos: 20                                                 
                 ),
                        Gap(15),
                   CircularProgressPlan(
                            title: "Marketing",
                        totalVideos: 24,
                        coveredVideos: 19),
             ],
           ),
         ),
              
        
          GestureDetector(onTap: (){
             Navigator.of(context).push(
           MaterialPageRoute(
              builder: (context) => const Courses()));
          },
            child: Container(
              margin: const EdgeInsets.only(left: 10,right: 10,top:10),
              width: 350,
              height: 100,
            
              decoration: BoxDecoration(
                boxShadow:[
              BoxShadow(color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3)),
                    const BoxShadow(
                    color: Colors.transparent,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3)), ],
                color: const Color(0xFFEFE0FF),
                borderRadius: BorderRadius.circular(15), ),
                child:   Column(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            
                    Padding(
                      padding: const EdgeInsets.only(left: 25,top: 2),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                          const Text("Courses",
                          style: TextStyle(
                            color: Color(0xFF440687),
                            fontWeight: FontWeight.bold,fontSize: 20),),
                          Padding(
                            padding: const EdgeInsets.only(right: 10,top: 10),
                            child: SvgPicture.asset(AppImage.womanAvatar,height: 50,),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("Off-line exchange of learning experiences",
                      style: TextStyle(color: Color(0xFF440687),),),
                    ),
            
                  ],
                ),
            
            ),
          ),
        ]),
      ),
    );
  }
}



class WelcomeStack extends StatelessWidget {
  const WelcomeStack({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              // clipBehavior: Clip.none,
              padding: const EdgeInsets.only(top: 50),
              color: const Color(0xFF3D5CFF),
              width: screenWidth,
              height: 180,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Hi,Great",
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        SvgPicture.asset(
                          AppImage.manAvatar,
                        ),
                      ],
                    ),
                    const Text(
                      "Let's start learning",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 130,
          left: 20,
          right: 20,
          // bottom: 5.0,
          child: Container(
            margin: const EdgeInsets.only(
              bottom: 0,
              top: 5,
            ),
            //padding: const EdgeInsets.only(bottom:40, left: 10, right: 10),
            height: 90,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3)),
                  const BoxShadow(
                      color: Colors.transparent,
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3))
                ],
                borderRadius: BorderRadius.circular(15.0)),

            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Learned today",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "My courses",
                        style:
                            TextStyle(color: Color.fromARGB(255, 6, 29, 231)),
                      )
                    ],
                  ),
                ),
                //  Gap(5),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text.rich(TextSpan(
                      text: "46min",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      children: [
                        TextSpan(
                            text: "/60min",
                            style: TextStyle(color: Colors.grey, fontSize: 10))
                      ])),
                ),
                Gap(5),
                Padding(
                  padding: EdgeInsets.only(left: 13, right: 13),
                  child: LinearProgressIndicator(
                    value: 0.7,
                    backgroundColor: Color.fromARGB(255, 243, 233, 233),
                    valueColor: AlwaysStoppedAnimation(
                        Color.fromARGB(255, 241, 136, 136)),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 10,
      ),
      padding: const EdgeInsets.only(
        left: 20,
      ),
      height: 120,
      width: 300,
      decoration: const BoxDecoration(
        color: Color(0xFFCEECFE),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: SvgPicture.asset(
              AppImage.hand,
              height: 150,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 5, right: 10, bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "What do you want to learn today",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Gap(30),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      backgroundColor: const Color.fromARGB(255, 248, 97, 2),
                      minimumSize: const Size(40, 40)),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),

                    //   child: Text("Get Started",
                    //   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))
                    // ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
