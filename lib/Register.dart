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

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
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

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your email',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your phone number',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
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
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                    hintText: 'Confirm your Password',
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
              // margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  color: Color(style.primaryPink),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical:0,horizontal: 100)
                ),
                onPressed: (){

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

