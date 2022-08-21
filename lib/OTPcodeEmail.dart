import 'package:flutter/material.dart';
import 'package:locawash/ForgotPassword.dart';
import 'package:locawash/Login.dart';
import 'package:locawash/Register.dart';
import 'style.dart';
class OTPcodeEmail extends StatefulWidget {
  OTPcodeEmail({key}) : super(key: key);

  @override
  State<OTPcodeEmail> createState() => _OTPcodeEmailState();
}

class _OTPcodeEmailState extends State<OTPcodeEmail> {
  final Style style = Style();
  bool _isObscure=true;
  final GlobalKey<FormState> _formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: ListView(
          children: <Widget> [
            Container(
              height: 300,
              width: double.infinity,
              color: Color(0xff141C43),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text(
                      'LOKAWASH', style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      letterSpacing: 1.5,
                      color: Colors.white,
                    ),
                    ),
                    Text('Best friend in cleanliness',
                      style: TextStyle(
                        color: Color(0xffdcd6d6),
                        fontFamily: 'Montserrat',
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),),
                  ]
              ),
            ),

            Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Text('Enter your email to get the OTP code',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 24,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                  ),)),


            Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  style: TextStyle(
                      fontFamily: 'Montserrat-Bold'
                  ),
                  decoration: InputDecoration(
                    errorStyle: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Montserrat-Bold'
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'JhoneQwon@gmail.com',
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "email is required";
                    }else if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                      return "Please Enter a correct email";
                    }else
                      return null;
                  },
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 17),
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 0),
              decoration: BoxDecoration(
                  color: Color(style.primaryPink),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                ),
                onPressed: (){
                  if(!_formKey.currentState!.validate()){
                    return ;
                  }
                  // else{
                  //   showDialog(context: context,
                  //       builder: (BuildContext context){
                  //         // return AdvancedAlert();
                  //       });
                  // }
                },

                child: Text('Submit',
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1
                  ),
                ),),
            ),

          ],

        ),
      ),
    );
  }
}

