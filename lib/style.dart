import 'package:flutter/material.dart';

class Style{
  int primaryBlue = 0xff141C43;
  int primaryPink = 0xffF54168;
  int secondaryPink = 0xffF54168CE;
  int gradientTop = 0xffD2D4E1;
  int gradientCenter = 0xff777B96;
  int gradientBottom = 0xff3B4165;
  List<Color> gradientScreen(){
    List<Color>colors=[
      Color(gradientTop),
      Color(gradientTop),
      Color(gradientCenter),
      Color(gradientBottom),
      Color(gradientBottom),
      Color(gradientBottom),
      Color(gradientBottom),
    ];
    return colors;
  }
}