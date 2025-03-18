import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:w6_practice_part1/EX-2-START-CODE/dto/post_dto.dart';
import 'package:w6_practice_part1/EX-2-START-CODE/model/post.dart';
import 'package:w6_practice_part1/EX-2-START-CODE/repository/post_repository.dart';

class HttpPostRepository implements PostRepository {
  @override
  Future<List<Post>> getPost(int postId) async {
    List<Post> postlist = [];
  
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
      try {
          //fetching the data 
        final response = await http.get(url);
        if (response.statusCode == 200) {
          final List<dynamic> data = json.decode(response.body);
          for(var item in data){
            // Load the json to PostDTO
            PostDTO postDTO = PostDTO.fromJson(item);
            // convert PostDTO to Post
            // then add to the list
            postlist.add(Post.fromDTO(postDTO));
          }
        } else {
          print('Error: ${response.statusCode}');
        }
      } catch (e) {
        print('Error: $e');
      }
      
   return postlist;
  }


 
}