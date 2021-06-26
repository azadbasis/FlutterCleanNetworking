import 'package:clean_networking_series/repository/data_repo.dart';
import 'package:clean_networking_series/service/http_service.dart';
import 'package:clean_networking_series/service/http_service_impl.dart';
import 'package:http/src/response.dart';

class DataRepoImpl implements DataRepo {
  HttpService _httpService;

  DataRepoImpl() {
    _httpService = HttpServiceImpl();
    _httpService.init();
  }

  @override
  Future<Response> getPostData() async {
    // TODO: implement getPostData
    return await _httpService.getRequest("posts");
  }
}
