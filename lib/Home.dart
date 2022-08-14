import 'package:flutter/material.dart';
import 'package:locawash/Login.dart';
import 'style.dart';
class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
  final Style style = Style();
  @override
  Widget build(BuildContext context) {
    return  Container(
        child: FlatButton(
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
            );
          },
          child: Text('hello locaWash.',
      style: TextStyle(
          color: Color(style.primaryBlue)
      ),),
        ),
    );
  }
}
