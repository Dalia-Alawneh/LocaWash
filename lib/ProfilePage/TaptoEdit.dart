import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:locawash/ChangeProfilePhoto/ChangePhotoAlert.dart';
import 'package:locawash/AdvancedAlert.dart';
import 'package:locawash/Preferences.dart';
import 'package:locawash/ProfilePage/profile_page.dart';
import 'api_service.dart';
import 'textfield_widget.dart';
import 'user.dart';
import 'package:locawash/ProfilePage/user_desc.dart';
import 'package:locawash/ProfilePage/user.dart';
import 'package:locawash/ProfilePage/userModelFromJson.dart';
import 'package:locawash/ProfilePage/api_service.dart';


class TaptoEdit extends StatefulWidget {
  @override
  State<TaptoEdit> createState() => _TaptoEditState();
}

class _TaptoEditState extends State<TaptoEdit> {
  User user = UserPreferences.myUser;

  late List<UserModel>? _userModel = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }
  Preferences preferences =Preferences();

  void _getData() async {
    _userModel = (await apiService().getUsers())!.cast<UserModel>();
    Future.delayed(const Duration(seconds: 0)).then((value) => setState(() {}));
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: AppBarCustom(),
        resizeToAvoidBottomInset: false,
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return
              Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Stack(

                        children:[
                          InkWell(
                            child: CircleAvatar(
                              child: ClipOval(
                                child:
                                (preferences.getImage()!=null)
                                    ?Image.file(
                                  File(preferences.getImage()
                                  ),
                                  fit: BoxFit.fill,
                                )
                                    :Image.asset('images/default.jpg'),
                              ),
                              backgroundColor: Colors.grey,
                              radius: 50,
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              right: -25,
                              child: RawMaterialButton(
                                onPressed: () {
                                   showDialog(context: context, builder: (context){
                                  return ChangePhotoAlert();
                                  });
                                },
                                fillColor: Color(0xFFEB1555),
                                child: Icon(Icons.edit, color: Colors.white,size: 20,),
                                shape: CircleBorder(),
                              )),
                        ]
                    ),
                    SizedBox(height: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 20,right: 20 , top: 20),
                          child:
                          TextFieldWidget(label: 'User Name', text: preferences.getUsername(), onChanged: (username){}
                          ,isEnabled: true),
                        ),
                      ],
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 20,right: 20 , top: 20),
                            child:
                            TextFieldWidget(label: 'Email', text: preferences.getEmail(), onChanged: (email){}
                            ,isEnabled: true,),
                          ),
                        ]
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 20,right: 20 , top: 20),
                            child:
                            TextFieldWidget(label: 'Phone Number', text: user.PhoneNumber, onChanged: (PhoneNumber){}
                            ,isEnabled: true,),
                          ),
                        ]
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 20,right: 20 , top: 20),
                            child:
                            TextFieldWidget(label: 'Address', text: user.Address, onChanged: (Address){}
                            ,isEnabled: true,),
                          ),
                        ]
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                        onTap: () {
                         showDialog(context: context, builder: (context){
                           return AdvancedAlert(head: 'Profile has been updated',
                               desc: "Ullamcorper imperdiet urna id non sedest sem. Rhoncus amet, enim purusgravida done aliquet.",
                               onPressedCustom: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context){
                               return ProfilePage();
                             }));
                               },
                             icon: Icons.person_pin_outlined,
                           );
                         });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFEB1555),
                          ),
                          margin: EdgeInsets.only(top: 10.0),
                          width: 360,
                          height: 60.0,
                          child: Center(
                            child: Text('Update Profile',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,

                              ),),
                          ),
                        )
                    ),
                  ]
              );
          },
        ),
      ),
    );
  }

}