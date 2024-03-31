import 'package:dio/dio.dart';

class LoginApi {
  Response? response;
  void getUsers() async {
    response = await Dio()
        .get('https://4eaa-154-239-115-75.ngrok-free.app/api/com/register');
    print(response?.data);
  }
}
