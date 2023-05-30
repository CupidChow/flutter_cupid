import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Apiclient extends GetConnect implements GetxService {
  late String token;
  final String baseUrl;
  late Map<String, String> headers;
  Apiclient( this.baseUrl) {
    this.baseUrl = baseUrl;
    timeout = Duration(seconds: 30);
    headers = {
      "Content-type": "application/json; charset=UTF-8",
      "Authorization": "Bearer $token",
    };
  }

  Future<Response> getData(String url) async {
    try {
      Response response = await get(url);
      return response;
    } catch (e) {
      debugPrint("===${e}");
      return Response(statusCode: 9999, statusText: e.toString());
    }
  }
  // Future<Response> getDataWithParams(String url,Map<String,String> params) async {
  //   try {
  //     Response response = await get(url,head);
  //     return response;
  //   } catch (e) {
  //     debugPrint("===${e}");
  //     return Response(statusCode: 9999, statusText: e.toString());
  //   }
  // }
}
