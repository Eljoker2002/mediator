import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mediator/widgets/snack_bar.dart';
import '../../../core/navigator.dart';
import '../../home_screen/screen.dart';

class SignUpController {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController field = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController website = TextEditingController();
  TextEditingController social = TextEditingController();
  TextEditingController service = TextEditingController();
  TextEditingController about = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> addUser(BuildContext context) async {
    formKey.currentState!.save();
    if (!formKey.currentState!.validate()) {
      return;
    }
    try {
      final response = await Dio().post(
        "https://ae28-197-121-198-5.ngrok-free.app/api/com/register",
        options: Options(
          headers: {"Accept": "application/json"},
        ),
        data: {
          "name": name.text,
          "email": email.text,
          "password": password.text,
          "field_id": field.text,
          "phone": phone.text,
          "website": website.text,
          "service_id": service.text,
          "socials": social.text,
          "about": about.text,
        },
      );
      RouteUtils.pushAndRemoveAll(context: context, screen: HomeScreen());
    } on DioException catch (e) {
      showSnackBar(context,
          title: e.response?.data["message"] != "" && e.response?.data["message"] != "The password field must be at least 8 characters."
              ? "Email not found"
              : 'Password invalid');
    }
  }
}
