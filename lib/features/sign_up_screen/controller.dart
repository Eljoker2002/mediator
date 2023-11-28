import 'package:flutter/cupertino.dart';

class SignUpController {

  String? email, password;
  final formKey = GlobalKey<FormState>();

  Future<void> signup() async {
    formKey.currentState!.save();
    if (!formKey.currentState!.validate()) {
      return;
    }
    print({
      "Email": email,
      "Password": password,
    });
  }
}
