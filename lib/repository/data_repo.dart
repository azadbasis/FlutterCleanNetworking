
import 'package:http/http.dart';

abstract class DataRepo{
  Future<Response> getPostData();
}