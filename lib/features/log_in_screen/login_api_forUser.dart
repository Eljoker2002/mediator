import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mediator/core/navigator.dart';
import 'package:mediator/features/home_screen/screen.dart';
import '../../widgets/snack_bar.dart';

class LoginApiForUser {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String name = '';
  String photo = '';
  String token = '';
  final formKey = GlobalKey<FormState>();

  Future<void> getUser(BuildContext context) async {
    formKey.currentState!.save();
    if (!formKey.currentState!.validate()) {
      return;
    }
    try {
      final response = await Dio().post(
        "https://39ba-197-35-234-79.ngrok-free.app/api/login",
        options: Options(
          headers: {"Accept": "application/json"},
        ),
        data: {
          "email": email.text,
          "password": password.text,
        },
      );
      var userDetails = response?.data;
      name = userDetails["user"]["name"];
      photo = userDetails["user"]["photo"];
      token = userDetails["token"];
      RouteUtils.pushAndRemoveAll(
        context: context,
        screen: HomeScreen(
          name: name,
        ),
      );
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
