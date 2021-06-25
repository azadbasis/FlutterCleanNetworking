import 'package:clean_networking_series/repository/repository.dart';

class BlogPostService{
  Repository _repository;
  BlogPostService(){
    _repository=Repository();
  }
  getAllBlogPosts()async{
    return await _repository.httpGet('posts');
  }
}