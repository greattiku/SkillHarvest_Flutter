import 'package:app_skill_harvest/Course/course_video.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class ProductDesign extends StatelessWidget {
  const ProductDesign({super.key,
  required this.courseTitle,
  required this.price,
  required this.duration,
  required this.noOfLessons,
  required this.courseSubTitleHeading,
  required this.courseSubTitleSubHeading
  });

  final String courseTitle;
  final double price;
  final String duration;
  final String noOfLessons;
  final String courseSubTitleHeading;
  final String courseSubTitleSubHeading;
  

  @override
  Widget build(BuildContext context) {
   
    return  Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text( courseTitle,
                  style: const TextStyle(fontWeight: FontWeight.bold, ),),
                const Gap(200),
                Text('\$$price', style: const TextStyle(color: Color.fromARGB(255, 7, 22, 236)),)
             ],
           ),
           Text('$duration - $noOfLessons', 
           style: const TextStyle(color: Colors.grey),),
           const SizedBox(
            height: 20,
           ),
           Text(courseSubTitleHeading, style: const TextStyle(fontWeight: FontWeight.bold),),
           Text(courseSubTitleSubHeading,
           style: const TextStyle(color: Colors.grey),),
        
        Gap(10),
        const CourseVideos(
        courseTitle: "Welcome to the course", 
        courseNo: 01, 
        duration: "6:10 mins",
        ),
        
        ],
      ),
    );
    
  }
}




