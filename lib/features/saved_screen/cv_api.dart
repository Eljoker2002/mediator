import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../widgets/snack_bar.dart';

class UploadApiController {
  String message='';
  String filePath='';
  TextEditingController file = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> uploadFile(BuildContext context) async {
    formKey.currentState!.save();
    if (!formKey.currentState!.validate()) {
      return;
    }
    try {
      final response = await Dio().post(
        "https://39ba-197-35-234-79.ngrok-free.app/api/upload",
        options: Options(
          headers: {"Authorization": "Bearer token"},
        ),
        data: {
         "file":file
        },
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 200) {
         message=e.response?.data["message"];
         filePath=e.response?.data["file_path"];
        print(message);
        print(filePath);
      } else {
        // Error occurred during file upload
        print('Error uploading file');
      }    }
  }
}