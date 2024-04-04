import 'package:dio/dio.dart';

class LoginApi {
  Response? response;
  void getUsers() async {
    response = await Dio().get('http://127.0.0.1:8000/api/com/login');
    print(response?.statusCode);
  }
}
