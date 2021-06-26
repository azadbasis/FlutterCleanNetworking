import 'package:clean_networking_series/repository/data_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  DataRepoImpl dataRepoImpl=DataRepoImpl();
  @override
  void initState() {
    super.initState();
    _getAllBlogPost();
  }

  _getAllBlogPost() async {
    var result = await dataRepoImpl.getPostData();
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
