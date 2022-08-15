import 'package:flutter/material.dart';
import 'style.dart';
class Login extends StatelessWidget {
  Login({Key key}) : super(key: key);
  final Style style = Style();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget> [
            Container(
              height: 350,
              width: double.infinity,
              color: Color(0xff141C43),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text(
                      'LOKAWASH', style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.white,
                    ),
                    ),
                  ]
              ),
            )
          ],

        ),
      ),
    );
  }
}
