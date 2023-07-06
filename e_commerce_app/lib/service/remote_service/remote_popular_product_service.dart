import 'package:e_commerce_app/const.dart';
import 'package:http/http.dart' as http;

class RemotePopularProductService {
  var client = http.Client();
  var remoteUrl = '$baseUrl/api/popular-products';

  Future <dynamic> get() async {
    var response = await client.get(
      Uri.parse("$remoteUrl?populate=product,product.images")
    );
    return response;
  }
}