
import 'package:clean_networking_series/service/http_service.dart';
import 'package:http/src/response.dart';
import 'package:http/http.dart' as http;
const BASE_URL = "https://jsonplaceholder.typicode.com/";

class HttpServiceImpl implements HttpService{

  @override
  Future<Response> getRequest(String url) async{
    // TODO: implement getRequest
      return await http.get(Uri.parse(BASE_URL+url));
  }

  @override
  void init() {
    // TODO: implement init
  }

}