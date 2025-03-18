import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w6_practice_part1/EX-1-START-CODE/provider/course_provider.dart';
import 'package:w6_practice_part1/EX-1-START-CODE/repository/course_mock_repository.dart';

import 'screens/course_list_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CourseProvider(repository: CourseMockRepository())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CourseListScreen(),
      ),
    );
  }
}
