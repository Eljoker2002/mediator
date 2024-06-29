import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mediator/core/navigator.dart';
import 'package:mediator/features/home_screen/screen.dart';
import 'package:mediator/widgets/navigation_bar.dart';
import '../../widgets/snack_bar.dart';

class LoginApiForUser {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String fName = '';
  String lName = '';
  String name = '';
  List<String> fullName = [];
  String photo = '';
  String token = '';
  String skills = '';
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
          headers: {"Content-Type": "application/json"},
        ),
        data: {
          "email": email.text,
          "password": password.text,
        },
      );
      var userDetails = response?.data;
      fName = userDetails["user"]["first_name"];
      lName = userDetails["user"]["last_name"];
      fullName = [fName, lName];
      name = fullName.join(" ");
      photo = userDetails["user"]["photo"];
      token = userDetails["token"];
      skills = userDetails["user"]["skills"];
      RouteUtils.pushAndRemoveAll(
        context: context,
        screen: MyUserPage(
          name: name,
          token: token,
          skills: skills,
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
