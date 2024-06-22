import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SkillsControllerApi {
  List<String> allSkills = [];
  String correctSkills = "";
  Future<void> sendSkills(BuildContext context) async {
    correctSkills = allSkills.join(", ");
    final response = await Dio().post(
      "https://skills.seere.live/predict",
      options: Options(
        headers: {"Accept": "application/json"},
      ),
      data: {
        "skills": correctSkills,
      },
    );
    print(correctSkills);
    print(response.data);
  }
}
