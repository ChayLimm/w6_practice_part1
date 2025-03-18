import 'package:flutter/material.dart';
import 'package:w6_practice_part1/EX-1-START-CODE/models/course.dart';
import 'package:w6_practice_part1/EX-1-START-CODE/repository/course_repository.dart';

class CourseProvider extends ChangeNotifier {
  CourseRepository repository;
  CourseProvider({required this.repository});

  List<Course> get getCourses => repository.getCourses();

  Course getCoursesFor(String courseID){
    return getCourses.firstWhere((item)=>item.courseID == courseID);
  }

  void addScore(String courseID, CourseScore courseScore){
    Course course = getCoursesFor(courseID);
    repository.addScore(course, courseScore);
    notifyListeners();
  }
}
