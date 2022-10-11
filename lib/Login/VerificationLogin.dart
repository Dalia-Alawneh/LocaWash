import 'package:flutter/material.dart';
import 'package:locawash/Password/ForgotPassword.dart';
import 'package:locawash/Login/Login.dart';
import 'package:locawash/Login/OTPcodeEmail.dart';
import 'package:locawash/Register.dart';
import 'OTPcodeNumber.dart';
import '../style.dart';
class VerificationLogin extends StatefulWidget {

  VerificationLogin( this.msg);
  final String msg;
  @override
  State<VerificationLogin> createState() => _VerificationLoginState();
}

class _VerificationLoginState extends State<VerificationLogin> {
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
                child: Text('Select your account verification to login',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 25,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                  ),)),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return OTPcodeNumber(widget.msg);
                  }));
                },
                child: Container(

                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width:1,
                      color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),

                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons.phone_android_sharp,
                          size: 30.0,
                          color: Color(style.primaryPink),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Container(
                                margin: EdgeInsets.only(right: 95),
                                child: Text('Send via SMS',  style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    fontFamily: 'Montserrat'
                                ),
                                ),
                              ),
                              Text('Send OTP code via phone number',
                                style:TextStyle(
                                  fontSize: 10,
                                  height: 2,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ]
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25),
                        child: IconButton(icon: Icon(Icons.arrow_forward_ios, size: 15,),
                          color: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                  height: 15,
              ),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return OTPcodeEmail(widget.msg);
                }),);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      width:1,
                      color: Colors.grey
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),

                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(Icons.email,
                        size: 30.0,
                        color: Color(style.primaryPink),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Container(
                              margin: EdgeInsets.only(right: 72),
                              child: Text('Send via Email',  style:TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat'
                              ),
                              ),
                            ),
                            Text('Send OTP code via email',
                              style:TextStyle(
                                fontSize: 10,
                                height: 2,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ]
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 37),
                      child: IconButton(icon: Icon(Icons.arrow_forward_ios, size: 15,),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //         height:90,
              //       child: Card(
              //         // elevation: 5,
              //         // margin: EdgeInsets.all(10),
              //         shape: RoundedRectangleBorder(
              //           side: BorderSide(
              //             color: Colors.grey,
              //           ),
              //           borderRadius: BorderRadius.circular(5.0),
              //         ),
              //         margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
              //         child: ListTile(
              //           leading: Container(
              //               padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
              //             width: 60,
              //             height: 60,
              //             decoration: BoxDecoration(
              //               color: Colors.grey.shade100,
              //               borderRadius: BorderRadius.circular(8),
              //             ),
              //             child: Icon(Icons.phone_android_sharp,
              //               size: 30.0,
              //               color: Color(style.primaryPink),
              //             ),
              //           ),
              //           title: Container(
              //             margin: EdgeInsets.only(bottom: 12),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children:[
              //                 Align(
              //                   alignment: Alignment.topLeft,
              //                   child: Text('Send via SMS',  style:TextStyle(
              //                   fontWeight: FontWeight.bold,
              //                     fontSize: 12,
              //                     fontFamily: 'Montserrat'
              //                   ),
              //                   ),
              //                 ),
              //
              //                 Align(
              //                   alignment: Alignment.topLeft,
              //                   child: Text('Send OTP code via phone number',
              //                       style:TextStyle(
              //                         fontSize: 10,
              //                         height: 2,
              //                         fontFamily: 'Montserrat',
              //                         fontWeight: FontWeight.bold,
              //                         color: Colors.grey,
              //                       ),
              //                   ),
              //                 ),
              //               ]
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // )
          ],

        ),
      ),
    );
  }
}
