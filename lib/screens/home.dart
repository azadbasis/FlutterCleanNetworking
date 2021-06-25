import 'package:clean_networking_series/service/blog_post_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BlogPostService _blogPostService=BlogPostService();
  @override
  void initState() {
    super.initState();
    _getAllBlogPost();
  }

  _getAllBlogPost() async {
    var result = await _blogPostService.getAllBlogPosts();
    print(result.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Networking with repository service pattern'),
      ),
      body: Center(
        child: Text(''),
      ),
    );
  }
}
