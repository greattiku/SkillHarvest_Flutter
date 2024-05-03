import 'package:app_skill_harvest/Course/course_json.dart';
import 'package:app_skill_harvest/json_data/dummy_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CourseNotifier extends StateNotifier<List<Course>>{
  CourseNotifier(super.state);
  
}

final CourseNotifier _courseNotifier = CourseNotifier(dummyCourses);

final courseProvider = StateNotifierProvider<CourseNotifier,List<Course>>
((ref) => _courseNotifier);