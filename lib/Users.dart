import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
const String UserApi = 'https://jsonplaceholder.typicode.com/users';
const String MyApi = 'https://localhost:8080/api/';
class Users{
  Future<dynamic> getData() async{
    Uri link = Uri.parse(UserApi);
    http.Response response = await http.get(link);
    // print(response.body);
    if(response.statusCode == 200){
      var data = response.body;
      // print(data.length);
      var decodedData = jsonDecode(data);
      return decodedData;
    }else{
      print('error');
    }
  }
}