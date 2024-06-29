import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediator/features/complete_profile_screen/user_profile/user_api_controller.dart';
import 'package:mediator/features/log_in_screen/login_api_forUser.dart';
import 'package:mediator/features/log_in_screen/login_forUser.dart';

class SkillsControllerApi {
  UserSignupController userSignupController = UserSignupController();
  LoginApiForUser loginApiForUser = LoginApiForUser();
  List<String> allSkills = [];
  String correctSkills = "";
  List<dynamic> data = [];
  List<String> companyList = [];
  List<String> jobTitle = [];
  List<String> jobStatus = [];
  List<String> jobDescription = [];
  List<String> jobAddress = [];

  Future<void> sendSkills(BuildContext context) async {
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
    data = response.data["recommendations"];
    for (int i = 0; i <= data.length - 1; i++) {
      print(data[i]);
      companyList.add(data[i]["company"]);
      jobTitle.add(data[i]["jobtitle"]);
      jobDescription.add(data[i]["jobdescription"]);
      jobAddress.add(data[i]["joblocation_address"]);
      jobStatus.add(data[i]["employmenttype_jobstatus"]);
    }
  }

  Future<void> getSkills(BuildContext context) async {
    await sendSkills(context);
    companyList = companyList;
    jobTitle = jobTitle;
    jobDescription = jobDescription;
    jobAddress = jobAddress;
    jobStatus = jobStatus;
  }
}
