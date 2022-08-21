import 'package:flutter/material.dart';
import 'package:locawash/ForgotPassword.dart';
import 'package:locawash/Login.dart';
import 'package:locawash/OtpScreen.dart';
import 'package:locawash/Register.dart';
import 'package:locawash/AdvancedAlert.dart';
import 'Otp.dart';
import 'style.dart';

class OTPcodeEmail extends StatefulWidget {
  final String msg;
  OTPcodeEmail(this.msg);

  @override
  State<OTPcodeEmail> createState() => _OTPcodeEmailState();
}

class _OTPcodeEmailState extends State<OTPcodeEmail> {

  bool _onEditing = true;
  late String _code;
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
                    hintText: 'Enter Email',
                  ),
                  initialValue: widget.msg,
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
                  else{
                    showDialog(context: context,
                        builder: (BuildContext context){
                          return AdvancedAlert(head: 'OTP has been sent',
                              desc: 'We have sent the OTP code to your email please check your email right now',
                            onPressedCustom:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreeen()));
                          }
                          );
                        });
                  }
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

            // VerificationCode (
            //   textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
            //   keyboardType: TextInputType.number,
            //   underlineColor: Colors.amber,
            //   length: 3,
            //   cursorColor: Colors.blue,
            //   clearAll: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Text(
            //       'clear all',
            //       style: TextStyle(fontSize: 14.0, decoration: TextDecoration.underline, color: Colors.blue[700]),
            //     ),
            //   ),
            //   onCompleted: (String value) {
            //     setState(() {
            //       _code = value;
            //     });
            //   },
            //   onEditing: (bool value) {
            //     setState(() {
            //       _onEditing = value;
            //     });
            //     if (!_onEditing) FocusScope.of(context).unfocus();
            //   },
            // ),


          ],

        ),
      ),
    );
  }
}



