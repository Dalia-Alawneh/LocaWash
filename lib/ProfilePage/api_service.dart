import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:developer';
import 'package:locawash/ProfilePage/userModelFromJson.dart';
import 'constants.dart';


class apiService {

  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> _model = userModelFromJson(response.body);
        return _model;
      }
    }
    catch (e) {
      log(e.toString());
    }
  }
}