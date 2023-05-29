import 'dart:convert';
import 'package:basis_app/core/api_const.dart';
import 'package:basis_app/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';


class Api {

  Future<List<ProductModel>> get() async {
    Response response = await http.get(Uri.parse(baseUrl));
      if(response.statusCode == 200){
        final List result = jsonDecode(response.body)['data'];
        return result.map(((e) => ProductModel.fromJson(e))).toList();
      }else{
        throw Exception(response.reasonPhrase);
      }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};

    if (headers != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'there is problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }

  Future<dynamic> put(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});

    if (headers != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'there is problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }
}


// Map<String, String> headers = {};
// if (headers != null) {
// headers.addAll({'Authorization': 'Bearer $token'});
// }
// http.Response response = await http.get(Uri.parse(url), headers: headers);
// if (response.statusCode == 200) {
// return jsonDecode(response.body);
// } else {
// throw Exception(
// 'there is problem with status code ${response.statusCode}');
// }