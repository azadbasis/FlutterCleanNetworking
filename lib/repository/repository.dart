import 'package:http/http.dart' as http;

class Repository{
  String _baseUrl="https://jsonplaceholder.typicode.com/";
  httpGet(var api)async{
    return await http.get(Uri.parse(_baseUrl+api));
  }
}