// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:api_task_interview/model/api_res_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreenController with ChangeNotifier {
  Product? product;
  Future<void> getData() async {
    final url = Uri.parse(
        "https://mansharcart.com/api/getProduct/p_id/2050/key/123456789");

    var respData = await http.get(url);
    // print(respData.statusCode);
    // print(respData.body);
    if (respData.statusCode == 200) {
      var decodeData = jsonDecode(respData.body);
      SampleApiResModel apiRes = SampleApiResModel.fromJson(decodeData);
      product = apiRes.product;
    }
    notifyListeners();
  }
}
