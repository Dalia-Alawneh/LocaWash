import 'package:flutter/material.dart';
import 'style.dart';
class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
  final Style style = Style();
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Text('hello locaWash.',
      style: TextStyle(
        color: Color(style.primaryBlue)
      ),),
    );
  }
}
