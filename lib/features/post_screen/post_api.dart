import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediator/widgets/snack_bar.dart';

class Posts {
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController status = TextEditingController();
  String authorization = "a";
  List allTitle=[];
  List allDescription=[];
  List allLocation=[];
  List allStatus=[];
  List allNames=[];
  final formKey = GlobalKey<FormState>();

  Future<void> SendPost(BuildContext context) async {
    formKey.currentState!.save();
    if (!formKey.currentState!.validate()) {
      return;
    }
    try {
      final response = await Dio().post(
        "https://mediator.hostek.xyz/api/com/add-post",
        options: Options(
          headers: {
            "Accept": "application/json",
            "Authorization": authorization,
          },
        ),
        data: {
          "title": title.text,
          "description": description.text,
          "location": location.text,
          "status": status.text,
        },
      );
      showSnackBar(context, title: response.data["message"]);
    } on DioException catch (e) {
      showSnackBar(context, title: e.response?.data["message"]);
    }
  }

  Future<void> GetPost(BuildContext context) async {
    final response = await Dio().get(
      "https://mediator.hostek.xyz/api/com/company-posts",
    );
    print(response.data);
    List list = response.data["data"]["posts"];
    for (int i = 0; i < list.length; i++) {
       allTitle.add(list[i]["title"]) ;
       allDescription.add(list[i]["description"]);
       allLocation.add(list[i]["location"]) ;
       allStatus.add(list[i]["status"]) ;
       allNames.add(list[i]["company"]["name"]);
    }
  }
}
