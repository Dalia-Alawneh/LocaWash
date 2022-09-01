import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences{
  Map<dynamic, dynamic> userMap ={};
  static String _name='';
  static String _username='';
  static String _email='';
  static String _image ='';
  late SharedPreferences sharedPreferences;
  static bool _isDeleted=false;
void savePreference(Map user) async{
  sharedPreferences =await SharedPreferences.getInstance();
  sharedPreferences.setString('Name', user['name']);
  sharedPreferences.setString('username', user['username']);
  sharedPreferences.setString('email', user['email']);
  _name= sharedPreferences.getString('Name')!;
  _username = sharedPreferences.getString('username')!;
  _email = sharedPreferences.getString('email')!;
  userMap =user;
}

void saveImage(String? imagePath) async{
    SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
    sharedPreferences.setString('image', imagePath!);
    _image =sharedPreferences.getString('image')!;
  }

  String getName(){
    if(_name != null){
      return _name;
    }else
      return 'Demo name';
  }
  String getEmail(){
    if(_email != null){
      return _email;
    }else
      return 'Demo email';
  }
  String getImage(){
    if(_image!=null)
       return _image;
    else
      return 'images/defaultimg.jpg';
  }
  String getUsername(){
    if(_username != null){
      return _username;
    }else
      return 'Demo username';
  }
  void delete(){
      sharedPreferences.remove(_image);
  }
}