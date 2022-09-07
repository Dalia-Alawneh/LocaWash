import 'dart:io';
import 'package:flutter/material.dart';
import 'package:locawash/ChangeProfilePhoto/ChangePhotoAlert.dart';
import 'package:locawash/Preferences.dart';
import 'package:locawash/ProfilePage/TaptoEdit.dart';
import 'package:locawash/ProfilePage/user_desc.dart';
import 'textfield_widget.dart';
import 'user.dart';


class editProfile extends StatefulWidget {
  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  User user = UserPreferences.myUser;

  ChangePhotoAlert changePhotoAlert = ChangePhotoAlert();
  Preferences preferences= Preferences();

  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: AppBarCustom(),
        resizeToAvoidBottomInset: false,
        body: ListView(
          children: [
        Column(
        children: [
        Padding(
        padding: EdgeInsets.only(right: 15),
        child: Align(
          alignment: Alignment.topRight,
          child: ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                backgroundColor: MaterialStateProperty.all(Color(0xFFEB1555)),
              ),
              child: Text('Tap to Edit', style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),),
              onPressed: ()  {
                try {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return TaptoEdit();
                      }));

                } catch(e){
                  print(e);
                }
              }

          ),

        ),
      )
        ,
        SizedBox(
          height: 15,
        ),
        Stack(
            children:[
              InkWell(
                child: CircleAvatar(
                  child: ClipOval(
                    child: (preferences.getImage()!=null)
                        ?Image.file(
                      File(preferences.getImage()
                      ),
                      fit: BoxFit.cover,
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
                    onPressed: null,
                    fillColor: Color(0xFFEB1555),
                    child: Icon(Icons.edit, color: Colors.white,size: 20,),
                    shape: CircleBorder(),
                  )),
            ]
        ),
        SizedBox(height: 15,),
        Form(
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20 , top: 20),
                child:
                TextFieldWidget(label: 'User Name', text: preferences.getUsername(), onChanged: (username){}
                  ,isEnabled: false,),
              ),
            ],
          ),
        ),

        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20 , top: 20),
                child:
                TextFieldWidget(label: 'Email', text: preferences.getEmail(), onChanged: (email){}
                    ,isEnabled: false),
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
                    ,isEnabled: false),
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
                    ,isEnabled: false),
              ),
            ]
        ),


        SizedBox(
          height: 25,
        ),

        GestureDetector(
            onTap: (){
              showDialog(context: context, builder: (context){
                return ChangePhotoAlert();
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


        // Container(
        //   width: double.infinity,
        //   child: _editTitleTextField(),
        // )
        ]
    ),
          ],
        ),
      ),
    );
  }
}