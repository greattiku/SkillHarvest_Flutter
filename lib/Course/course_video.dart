
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


// ignore: must_be_immutable
class CourseVideos extends StatefulWidget {
 const CourseVideos({super.key,
   required this.courseTitle,
  required this.courseNo,
  required this.duration,
 
  });

  final String courseTitle;
  final int courseNo;
  final String duration;


  @override
  State<CourseVideos> createState() => _CourseVideosState();
}

class _CourseVideosState extends State<CourseVideos> {

 
   @override
  Widget build(BuildContext context) {
   bool isCompleted = true;
    return Column(
      children: [
        Row(
          children: [
            Text('${widget.courseNo}', style: TextStyle(color: Colors.grey),),
          Column(children: [
            Text(widget.courseTitle),
            Row(
              children: [
                Text(widget.duration,style: TextStyle(color: Color.fromARGB(255, 23, 7, 243)),),
              isCompleted?  Checkbox(
                      value: isCompleted,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isCompleted = newValue ?? false;
                        });
                      },
                      activeColor: Colors.white ,
                     
                      side: const BorderSide(color: Colors.blue, width: 1.0),
                      checkColor: const Color.fromARGB(255, 14, 6, 243),
                    )
                 : Container(),  

                 const Gap(20),
            
               
              ],
            )
          ],),
           
          ],
        )
      ],
    );
  }
}

