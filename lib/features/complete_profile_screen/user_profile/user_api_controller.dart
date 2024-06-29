import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mediator/features/log_in_screen/login_forUser.dart';
import '../../../core/app_colors.dart';
import '../../../core/navigator.dart';
import '../../../widgets/snack_bar.dart';
import '../../home_screen/screen.dart';

class UserSignupController {
  List<String> allSkills = [];
  String correctSkills = "";
  TextEditingController fName = TextEditingController();
  TextEditingController lName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String gender = "";
  TextEditingController phone = TextEditingController();
  TextEditingController gitHub = TextEditingController();
  TextEditingController facebook = TextEditingController();
  String university = "";
  TextEditingController dOB = TextEditingController();
  TextEditingController bio = TextEditingController();
  String city = "";
  final formKey = GlobalKey<FormState>();

  Future<void> addUser(BuildContext context) async {
    correctSkills = allSkills.join(", ");
    formKey.currentState!.save();
    if (!formKey.currentState!.validate()) {
      return;
    }
    try {
      final response = await Dio().post(
        "https://39ba-197-35-234-79.ngrok-free.app/api/register",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json",
          },
        ),
        data: {
          "first_name": fName.text,
          "last_name": lName.text,
          "password": password.text,
          "email": email.text,
          "gender": gender,
          "phone": phone.text,
          "DOB": dOB.text,
          // "photo": "default.png",
          "github": gitHub.text,
          "facebook": facebook.text,
          "bio": bio.text,
          "university_id": university,
          "city_id": city,
          "skills": correctSkills,
        },
      );
      print(response.data);
      RouteUtils.pop(
        context: context,
      );
      showSnackBar(
        context,
        title: "Your account added successfully",
        error: true,
        color: AppColors.black,
      );
    } on DioException catch (e) {
      print(e.response?.data);
      showSnackBar(
        context,
        title: "Something went wrong , Please check your data again",
      );
    }
  }
}
