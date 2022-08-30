import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../Login/Login.dart';
import '../Style.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _changePasswordState();
}

class _changePasswordState extends State<ChangePassword> {
  final Style style = Style();
  bool _isObscure=true;
  bool _confirmObscure=true;
  String newPass='';
  String confPass='';
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
                        fontFamily: 'Montserrat',
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                        color: Colors.white,
                      ),)
                  ]
              ),
            ),

            Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Text('Reset your Password',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                  ),)),

            Form(
                key: _formKey,
                child: Column(
                  children: [

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextFormField(
                        style: TextStyle(
                            fontFamily: 'Montserrat-Bold'
                        ),
                        validator: (value){
                          newPass = value!;
                          if(value.isEmpty){
                            return "This feild is required!";
                          }else
                            return null;
                        },
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                            errorStyle: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Montserrat-Bold'
                            ),
                            hintText: 'Enter your New Password',
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                                icon:
                                Icon(
                                  _isObscure ? Icons.visibility : Icons.visibility_off,
                                  color: Color(0xffF54168),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                })),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10,20,0),
                      child: TextFormField(
                        style: TextStyle(
                            fontFamily: 'Montserrat-Bold'
                        ),
                        obscureText: _confirmObscure,
                        validator: (value){
                          confPass = value!;
                          if(value.isEmpty){
                            return "Password confirmation is required";
                          }else
                            return null;
                        },
                        decoration: InputDecoration(
                            errorStyle: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Montserrat-Bold'
                            ),
                            hintText: 'Confirm your Password',
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                                icon:
                                Icon(
                                  _confirmObscure ? Icons.visibility : Icons.visibility_off,
                                  color: Color(0xffF54168),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _confirmObscure = !_confirmObscure;
                                  });
                                })),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin:  EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                      decoration: BoxDecoration(
                          color: Color(style.primaryPink),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            // padding: EdgeInsets.symmetric(vertical: 10,horizontal: 100)
                        ),
                        onPressed: (){
                          if(!_formKey.currentState!.validate()){
                            return;
                          }else if(newPass!=confPass){
                            Alert(
                                context: context,
                                title: "Warning!",
                                buttons:[
                                  DialogButton(
                                    onPressed: () { Navigator.pop(context); },
                                    child: Text('Ok'),
                                  ),
                                ] ,
                                desc: "new password dose not match confirm password").show();
                          }else{
                            Alert(context: context, 
                                title: "Confirm",
                                buttons:[
                                  DialogButton(
                                    color:Colors.green,

                                    onPressed: () {
                                      Alert(context: context,
                                          title: "Confirmation message"
                                          ,desc:'Password updated',
                                      buttons: [
                                        DialogButton(child: Text('Ok'), onPressed: (){
                                          Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));
                                        })
                                      ]
                                      ).show();
                                      },
                                    child: Text('Confirm'),
                                  ),
                                ] ,
                                 image: Image.network('https://www.pngitem.com/middle/iJhbJT_transparent-checklist-png-green-check-in-circle-png/')).show();
                          }
                        },

                        child: Text('Update password',
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
                )),





          ],

        ),
      ),
    );
  }
}
