import 'package:w6_practice_part1/EX-1-START-CODE/models/course.dart';

abstract class CourseRepository {
  List<Course> getCourses();
  void addScore(Course course, CourseScore courseScore);
} 
