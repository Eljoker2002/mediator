import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mediator/core/app_colors.dart';
import 'package:mediator/features/log_in_screen/login_forCompany.dart';
import 'package:mediator/widgets/snack_bar.dart';
import '../../../core/navigator.dart';
import '../../home_screen/screen.dart';

class CompanySignUpController {
  String ser1 = "";
  String ser2 = "";
  String fi1 = "";
  String fi2 = "";
  String fi3 = "";
  String fi4 = "";
  String fi5 = "";
  String fi6 = "";
  String fi7 = "";

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
  String services = "";
  String correctFields = "";
  List<dynamic> allFields = [];

  final formKey = GlobalKey<FormState>();

  Future<void> addUser(BuildContext context) async {
    formKey.currentState!.save();
    if (!formKey.currentState!.validate()) {
      return;
    }
    try {
      correctFields = allFields.join(",");
      final response = await Dio().post(
        "https://mediator.hostek.xyz/api/com/register",
        options: Options(
          headers: {"Accept": "application/json"},
        ),
        data: {
          "name": name.text,
          "email": email.text,
          "password": password.text,
          "field_id": correctFields,
          "phone": phone.text,
          "website": website.text,
          "service_id": services,
          "socials": social.text,
          "about": about.text,
        },
      );
      RouteUtils.pushAndRemoveAll(
          context: context, screen: LoginScreenForCompany());
      showSnackBar(context,
          title: "Welcome ${name.text} to Mediator",
          error: true,
          color: AppColors.black);
    } on DioException catch (e) {
      showSnackBar(context,
          title: e.response?.data["message"] != "" &&
                  e.response?.data["message"] !=
                      "The password field must be at least 8 characters."
              ? "Email not found"
              : 'Password invalid');
    }
  }

  Future<void> getData() async {
    final response = await Dio().get(
      "https://mediator.hostek.xyz/api/com/register",
    );
    String service1 = response.data["data"]["service"][0]["name"];
    ser1 = service1;
    String service2 = response.data["data"]["service"][1]["name"];
    ser2 = service2;
    //..........
    String field1 = response.data["data"]["field"][0]["name"];
    fi1 = field1;
    String field2 = response.data["data"]["field"][1]["name"];
    fi2 = field2;
    String field3 = response.data["data"]["field"][2]["name"];
    fi3 = field3;
    String field4 = response.data["data"]["field"][3]["name"];
    fi4 = field4;
    String field5 = response.data["data"]["field"][4]["name"];
    fi5 = field5;
    String field6 = response.data["data"]["field"][5]["name"];
    fi6 = field6;
    String field7 = response.data["data"]["field"][6]["name"];
    fi7 = field7;
  }
}
