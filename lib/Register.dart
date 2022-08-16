import 'package:flutter/material.dart';
import 'package:locawash/Login.dart';
import 'style.dart';
class Register extends StatefulWidget {
  Register({key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final Style style = Style();

  bool _isObscure=true;
  bool _confirmObscure=true;
  final GlobalKey<FormState> _formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: ListView(
          children: <Widget> [
            Container(
              height: 250,
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
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: RichText(
                  text: TextSpan(
                      text: 'Join the ', style: TextStyle( fontSize: 24, fontFamily: 'Montserrat', color: Colors.black, fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(text: 'LOCAWASH', style: TextStyle(fontFamily: 'Montserrat', color: Color(style.primaryPink), fontWeight: FontWeight.bold,)),
                        TextSpan(text: ' family to make your life easier', style: TextStyle(fontFamily: 'Montserrat', color: Colors.black, fontWeight: FontWeight.bold))
                      ]
                  ),
                ),
                ),
            Form(
                key: _formKey,
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Flexible(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                        child: new TextFormField(

                          style: TextStyle(
                              fontFamily: 'Montserrat-Bold'
                          ),
                          decoration: InputDecoration(
                            errorStyle: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Montserrat-Bold'
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'First name',
                          ),
                          validator: (value){
                            if(value.isEmpty){
                              return "First name is required";
                            }else if(!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                              return "Please Enter a correct name";
                            }else
                              return null;
                          },
                        ),
                      ),
                    ),
                    new Flexible(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: new TextFormField(
                          style: TextStyle(
                              fontFamily: 'Montserrat-Bold'
                          ),
                          decoration: InputDecoration(
                            errorStyle: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Montserrat-Bold'
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Last name',
                          ),
                          validator: (value){
                            if(value.isEmpty){
                              return "Last name is required";
                            }else if(!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                              return "Please Enter a correct name";
                            }else
                              return null;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10,20,0),
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
                      hintText: 'Enter your email',
                    ),
                    validator: (value){
                      if(value.isEmpty){
                        return "email is required";
                      }else if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                        return "Please Enter a correct email";
                      }else
                        return null;
                    },

                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10,20,0),
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
                      hintText: 'Enter your phone number',
                    ),
                    validator: (value){
                      if(value.isEmpty){
                        return "Phone number is required";
                      }else if(!RegExp(r'^[0-9]+$').hasMatch(value)){
                        return "Please Enter a correct number";
                      }else
                        return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10,20,0),
                  child: TextFormField(
                    style: TextStyle(
                        fontFamily: 'Montserrat-Bold'
                    ),
                    obscureText: _isObscure,
                    validator: (value){
                      if(value.isEmpty){
                        return "Password is required";
                      }else
                        return null;
                    },
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
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10,20,0),
                  child: TextFormField(
                    style: TextStyle(
                        fontFamily: 'Montserrat-Bold'
                    ),
                    obscureText: _confirmObscure,
                    validator: (value){
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(child:
                    Row(
                      children: [
                        CheckBox(),
                        RichText(
                          text: TextSpan(
                              text: 'I agree to the ', style: TextStyle( fontSize: 12, fontFamily: 'Montserrat-bold', color: Colors.black,),
                              children: <TextSpan>[
                                TextSpan(text: 'Terms ans Services', style: TextStyle(fontFamily: 'Montserrat-bold', color: Color(style.primaryPink),)),
                                TextSpan(text: ' and', style: TextStyle(fontFamily: 'Montserrat-bold', color: Colors.black,)),
                                TextSpan(text: ' Privacy Policy', style: TextStyle(fontFamily: 'Montserrat-bold', color: Color(style.primaryPink),))

                              ]
                          ),
                        ),
                      ],
                    ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(20,0,20,0),
                  decoration: BoxDecoration(
                      color: Color(style.primaryPink),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(

                    ),
                    onPressed: (){
                      if(!_formKey.currentState.validate()){
                        return;
                      }
                    },
                    child: Text('Create Account',
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),),
                ),
              ],
            )),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Do you already have an account?',
                  style: TextStyle(
                    color:Colors.black,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                    child: Text('Login',
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
          isChecked = value;
        });
      },
    );
  }
}

