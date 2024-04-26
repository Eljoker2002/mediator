import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mediator/widgets/snack_bar.dart';

class SignUpController {
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> signup(BuildContext context) async {
    formKey.currentState!.save();
    if (!formKey.currentState!.validate()) {
      return;
    }
    try {
      final response = await Dio().post(
        data: {
          "email": email.text,
          "password": password.text,
        },
        "https://dfec-154-237-127-188.ngrok-free.app/api/com/register",
        options: Options(
          headers: {"Content-Type": "application/json"},
        ),
      );
      print(response.data);
    } on DioException catch (e) {
      showSnackBar(context, title: e.response?.data ?? '');
      print(e.response?.statusCode);
      print(e.response?.data);
    }
  }
}
