import 'package:flutter/material.dart';
import 'content.dart';
class ContentBrain {
  int _contentNumber = 0;
  List<Content> _ContentBank = [
    Content('We have the newest washing machine',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
    Content('We use premium detergent',
        'Lorem Ipsum text of the printing and typesetting industry.'),
    Content('We have cleaned more than 10K+ cars',
        'Lorem Ipsum is simply dummy text of the printing.'),
  ];
  List<Content>  getList(){
    return _ContentBank;
  }
List<Indicator> _indicatorBank=[
      Indicator(
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
            ) ,
      ),
];
  int getNum(){
    return _contentNumber;
  }
  void nextContent() {
    if (_contentNumber < _ContentBank.length - 1) {
      _contentNumber++;

    }

  }

  String getH1Text() {
    return _ContentBank[_contentNumber].h1Text;
  }

  String getH2Text() {
    return _ContentBank[_contentNumber].h2Text;
  }


  bool isFinished() {
    if (_contentNumber >= _ContentBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }


  void restart() {
    _contentNumber=0;
  }
}

  // bool isFinished() {
  //   if (_contentNumber >= _ContentBank.length - 1) {
  //     print('Now returning true');
  //     return true;
  //
  //   } else {
  //     return false;
  //   }
  // }
  //
  // void reset() {
  //   _contentNumber = 0;
  // }
