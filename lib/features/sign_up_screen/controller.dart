import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mediator/widgets/snack_bar.dart';

class SignUpController {
  String? email, password;
  final formKey = GlobalKey<FormState>();

  Future<void> signup(BuildContext context) async {
    formKey.currentState!.save();
    if (!formKey.currentState!.validate()) {
      return;
    }
    try {
      final response = await Dio().post("");
      print(response.data);
    } on DioException catch (e) {
      showSnackBar(context, title: e.response?.data[''] ?? '');
    }
  }
}
