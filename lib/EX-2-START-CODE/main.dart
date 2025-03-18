import 'package:flutter/material.dart';
import 'package:w6_practice_part1/EX-2-START-CODE/repository/http_post_repository.dart';
import 'repository/mock_post_repository.dart';
import 'repository/post_repository.dart';
import 'package:provider/provider.dart';

import 'ui/providers/post_provider.dart';
import 'ui/screens/post_screen.dart';

class Exercise2 extends StatelessWidget {
  const Exercise2({super.key});

  

  @override
  Widget build(BuildContext context) {

    // PostRepository postRepo = MockPostRepository();

    return ChangeNotifierProvider(
      create: (context) => PostProvider(repository: HttpPostRepository()),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: PostScreen()),
    );
  }
}

// void main() {
//   // 1- Create the repository
//   PostRepository postRepo = MockPostRepository();
//   // 2 - Run the UI
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => PostProvider(repository: postRepo),
//       child: MaterialApp(debugShowCheckedModeBanner: false, home: PostScreen()),
//     ),
//   );
// }
