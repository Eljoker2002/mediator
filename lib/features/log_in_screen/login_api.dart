import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mediator/core/navigator.dart';
import 'package:mediator/features/home_screen/screen.dart';
import '../../widgets/snack_bar.dart';

class LoginApiController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> getUser(BuildContext context) async {
    formKey.currentState!.save();
    if (!formKey.currentState!.validate()) {
      return;
    }
    try {
      final response = await Dio().post(
        "https://mediator.hostek.xyz/api/com/login",
        options: Options(
          headers: {"Accept": "application/json"},
        ),
        data: {
          "email": email.text,
          "password": password.text,
        },
      );
      RouteUtils.pushAndRemoveAll(context: context, screen: HomeScreen());
    } on DioException catch (e) {
      showSnackBar(context,
          title: e.response?.data["message"] != "" &&
                  e.response?.data["message"] !=
                      "The password field must be at least 8 characters."
              ? "Email not found"
              : 'Password invalid');
    }
  }
}
