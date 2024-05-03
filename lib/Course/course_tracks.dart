import 'package:app_skill_harvest/Course/course_info.dart';
import 'package:app_skill_harvest/Course/course_json.dart';
import 'package:app_skill_harvest/Providers/course_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class CourseTracks extends ConsumerWidget {
  const CourseTracks({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

  final courses = ref.watch(courseProvider);
    return Expanded(
      child: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final Course course = courses[index];
        return  CourseList(
            courseName: course.courseName,
            facilitator: course.facilitator,
            price: course.price,
            time: course.time,
          );
      },)
    );
  }
}
