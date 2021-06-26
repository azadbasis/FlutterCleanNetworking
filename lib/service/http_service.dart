import 'package:http/http.dart';

abstract class HttpService {
  void init();
  Future<Response> getRequest(String url);
}
