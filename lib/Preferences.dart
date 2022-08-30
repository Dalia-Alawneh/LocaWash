import 'package:shared_preferences/shared_preferences.dart';

class Preferences{
  Map<String, String> userMap ={};
  static String _name='';
  static String _username='';
void savePreference(Map user) async{
  SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
  sharedPreferences.setString('Name', user['name']);
  sharedPreferences.setString('username', user['username']);
  _name= sharedPreferences.getString('Name')!;
  _username = sharedPreferences.getString('username')!;

}
  Map<String, String> getUser(){
    return userMap;
  }
  String getName(){
    if(_name != null){
      return _name;
    }else
      return 'Demo name';
  }
  String getUsername(){
    if(_username != null){
      return _username;
    }else
      return 'Demo username';
  }
}