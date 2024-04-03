import 'package:app_skill_harvest/Course/course_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

class CourseTracks extends StatelessWidget {
  const CourseTracks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          CourseList(
            courseName: "Product Design v1.0",
            facilitator: "Robertson Connie",
            price: 190,
            time: "16 hours",
          ),
          Gap(10),
          CourseList(
            courseName: "Java Development",
            facilitator: "Nguyen Shane",
            price: 190,
            time: "16 hours",
          ),
          Gap(10),
          CourseList(
            courseName: "Visual Design",
            facilitator: "Bert Pullman",
            price: 250,
            time: "14 hours",
          ),
          Gap(10),
          CourseList(
            courseName: "Visual Design",
            facilitator: "Bert Pullman",
            price: 250,
            time: "14 hours",
          ),
          Gap(10),
          CourseList(
            courseName: "Visual Design",
            facilitator: "Bert Pullman",
            price: 250,
            time: "14 hours",
          ),
          Gap(10),
          CourseList(
            courseName: "Visual Design",
            facilitator: "Bert Pullman",
            price: 250,
            time: "14 hours",
          ),
        ],
      ),
    );
  }
}
