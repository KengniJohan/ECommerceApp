import 'package:e_commerce_app/const.dart';
import 'package:http/http.dart' as http;

class RemotePopularCategoryService {
  var client = http.Client();
  var remoteUrl = '$baseUrl/api/popular-categories';

  Future<dynamic> get() async {
    var response = await client.get(
      Uri.parse(
        '$remoteUrl?populate=category,category.image&pagination[page]=1&pagination[pageSize]=5'
      )
    );
    return response;
  }
}