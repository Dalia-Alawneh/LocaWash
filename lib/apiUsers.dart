import 'package:flutter/material.dart';
import 'package:locawash/Login.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:locawash/AppBar.dart';
import 'package:locawash/userModelFromJson.dart';
import 'api_service.dart';
import 'apiUsers.dart';

class apiUsers extends StatefulWidget {
  @override
  State<apiUsers> createState() => _apiUsersState();
}

class _apiUsersState extends State<apiUsers> {
  late List<UserModel>? _userModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await apiService().getUsers())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        bottomNavigationBar: AppBarCustom(),
        resizeToAvoidBottomInset: false,
        body: ListView.builder(
          itemCount: _userModel!.length,
          itemBuilder: (context, index) {
            return
              Column(
                children:[
                  SizedBox(
                    height: 50,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 50,
                  ),
                  SizedBox(height: 15,),
                  Text(_userModel![index].username, style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),),
                  SizedBox(height: 5,),
                  Text(_userModel![index].email, style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    color: Colors.grey.shade400,
                  ),),
                ],

              );
          },
        ),
      ),
    );
  }
}