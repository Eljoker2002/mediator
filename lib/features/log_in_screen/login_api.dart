import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mediator/core/navigator.dart';
import 'package:mediator/features/home_screen/screen.dart';
import '../../widgets/snack_bar.dart';
import '../post_screen/post_screen.dart';

class LoginApiController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String name='';
  String website='';
  var socials;
  String photo='';
  String token='';
  String about='';
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
    } on DioException catch (e) {
      if (e.response?.data["message"] == "User Not Verified") {
        var companyDetails=e.response?.data["data"];
        name=companyDetails["company"]["name"];
        website=companyDetails["company"]["website"];
        socials=companyDetails["company"]["socials"];
        photo=companyDetails["company"]["photo"];
        token=companyDetails["company"]["token"];
        about=companyDetails["company"]["about"];
        RouteUtils.pushAndRemoveAll(context: context, screen: PostScreen(name: name, website: website, about: about,));
      } else {
        showSnackBar(context,
            title: e.response?.data["message"] != "" &&
                e.response?.data["message"] !=
                    "The password field must be at least 8 characters."
                ? "Email not found"
                : 'Password invalid');
      }
    }
  }
}