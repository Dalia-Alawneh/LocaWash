import 'package:flutter/material.dart';
import 'package:locawash/ForgotPassword.dart';
import 'package:locawash/Register.dart';
import 'style.dart';
class Login extends StatefulWidget {
  Login({key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                child: Text('Let us help you clean your car so it looks like new',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 25,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                  ),)),

            Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextFormField(
                        style: TextStyle(
                            fontFamily: 'Montserrat-Bold'
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Password is required!";
                          }else
                            return null;
                        },
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                            errorStyle: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Montserrat-Bold'
                            ),
                            hintText: 'Enter your Password',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(child:
                        Row(
                          children: [
                            CheckBox(),
                            Text('Remember Me!',
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat-Bold',
                                fontSize: 16,
                              ),),
                          ],
                        ),
                        ),

                        TextButton(
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>ForgotPassword()));

                          },
                          child: Text('Forget password?',
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat-bold',
                              fontSize: 16,
                              color: Color(0xffF54168),
                            ),),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                          color: Color(style.primaryPink),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 100)
                        ),
                        onPressed: (){
                          if(!_formKey.currentState!.validate()){
                            return;
                          }
                        },

                        child: Text('Login',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.1
                          ),
                        ),),
                    ),
                  ],
                )),



            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account?',
                  style: TextStyle(
                    color:Colors.black,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
                    child: Text('Register',
                      style: TextStyle(
                        color: Color(style.primaryPink),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ],
            )

          ],

        ),
      ),
    );
  }
}

class CheckBox extends StatefulWidget {
  const CheckBox({key}) : super(key: key);

  @override
  State<CheckBox> createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<CheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Color(0xffF54168);
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
