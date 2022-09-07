import 'dart:io';
import 'package:flutter/material.dart';
import 'package:locawash/History.dart';
import 'package:locawash/Login/Login.dart';
import 'package:locawash/Preferences.dart';
import 'package:locawash/ProfilePage/edit_profile.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:locawash/AppBar.dart';
import 'package:locawash/Password/ForgotPassword.dart';
import 'package:locawash/Password/changePassword.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Preferences preferences =Preferences();
  Map<dynamic, dynamic> user = Preferences().userMap;

  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        bottomNavigationBar: AppBarCustom(),
        resizeToAvoidBottomInset: false,
        body: ListView(
        children: [
        Column(
        children:[
        SizedBox(
        height: 50,
        ),
        CircleAvatar(
          child: ClipOval(
            child: (preferences.getImage()!=null)
                ?Image.file(
              File(preferences.getImage()
              ),
              fit: BoxFit.fitWidth,)
                :Image.asset('images/default.jpg'),
          ),
          backgroundColor: Colors.grey,
          radius: 50,
        ),
        SizedBox(height: 15,),
        Text(preferences.getName(), style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
        ),),
        SizedBox(height: 5,),

        Text(preferences.getUsername(), style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
          color: Colors.grey.shade400,
        ),),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text('Personal Info', style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                color: Colors.grey.shade400,
              ),),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: ListTile(
                onTap: ()  {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return editProfile();
                  }));

                },
                leading: Icon(Icons.person_outline,
                  size: 25.0,
                  color: Colors.black,
                ),
                title: Text('Your Profile',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return History();
                  }));
                },
                leading: Icon(Icons.file_download_outlined,
                  size: 25.0,
                  color: Colors.black,
                ),
                title: Text('History Transaction',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text('Security', style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                color: Colors.grey.shade400,
              ),),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ChangePassword();
                  }));
                },
                leading: Icon(Icons.lock_outline_rounded,
                  size: 25.0,
                  color: Colors.black,
                ),
                title: Text('Change Password',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ForgotPassword();
                  }));
                },
                leading: Icon(Icons.lock_open_rounded,
                  size: 25.0,
                  color: Colors.black,
                ),
                title: Text('Forget Password',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text('General', style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                color: Colors.grey.shade400,
              ),),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: ListTile(
                onTap: (){
                },
                leading: Icon(Icons.notifications_none,
                  size: 25.0,
                  color: Colors.black,
                ),
                title: Text('Notification',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                trailing: Container(
                  height: 22,
                  child: ToggleSwitch(
                    minWidth: 22,
                    cornerRadius: 40.0,
                    borderColor: [Colors.grey.shade200],
                    activeBgColors: [ [Colors.grey], [Color(0xffF54168)]  ],
                    activeFgColor: Colors.white60,
                    inactiveBgColor: Colors.white,
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: 0,
                    totalSwitches: 2,
                    radiusStyle: true,
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: ListTile(
                onTap: (){
                },
                leading: Icon(Icons.language_outlined,
                  size: 25.0,
                  color: Colors.black,
                ),
                title: Text('Languages',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: ListTile(
                onTap: (){
                },
                leading: Icon(Icons.info_outline_rounded,
                  size: 25.0,
                  color: Colors.black,
                ),
                title: Text('Help and Support',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Login();
                  }));
                },
                leading: Icon(Icons.logout_rounded,
                  size: 25.0,
                  color: Color(0xffF54168),
                ),
                title: Text('Logout',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xffF54168),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ],
        ),
        ],

      ),
        ],

        ),
      ),
    );
  }
}