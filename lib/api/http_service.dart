import 'package:dio/dio.dart';
import 'package:online_store/api/endpoints.dart';
import 'package:online_store/models/models.dart';

class HttpService {
  Future<User?> getUser(int id) async {
    try {
      var dio = Dio();
      final response = await dio.get(Endpoints.getUser(id));
      return User.fromJson(response.data);
    } on DioError catch (e) {
      print(e);
    }
  }

  Future<List<Product>?> getProducts() async {
    try {
      var dio = Dio();
      final response = await dio.get(Endpoints.getAllProducts());
      return (response.data as List).map((e) => Product.fromJson(e)).toList();
    } on DioError catch (e) {
      print(e);
    }
  }
}
