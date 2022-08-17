import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:locawash/Home.dart';
import 'package:locawash/content.dart';
import 'package:locawash/content_brain.dart';
import 'package:locawash/style.dart';
import 'content_brain.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:intro_slider/intro_slider.dart';

ContentBrain contentBrain = ContentBrain();
class Intro extends StatefulWidget {
   Intro({Key? key}) : super(key: key);
  @override
  State<Intro> createState() => _IntroState();
}
class _IntroState extends State<Intro> {
  Home home = Home();
  Style style=Style();
  double btnWidth = 30;
  double btn2Width = 10;
  double btn3Width = 10;
  int btnColor = 0xffF54168;
  int btn2Color = 0xff888888;
  int btn3Color = 0xff888888;
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Container(
            decoration: home.homeContStyle(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 5,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 60),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('LOKAWASH',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 40,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text('Best friend in cleanliness',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,

                              ),
                            )
                          ],
                        ),
                      ),
                    )

                ),
                Expanded(
                    flex: 4,
                    child: Container(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 30, 0),
                        padding: EdgeInsets.only(right: 50),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                TextButton(onPressed: (){
                                },
                                    child: Container(
                                      width: btnWidth,
                                      height: 10,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Color(btnColor)
                                      ),
                                    )),
                                TextButton(onPressed: (

                                    ){
                                },
                                    child: Container(
                                      width: btn2Width,
                                      height: 10,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Color(btn2Color)
                                      ),
                                    )),
                                TextButton(onPressed: (){

                                },
                                    child: Container(
                                      width: btn3Width,
                                      height: 10,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Color(btn3Color)
                                      ),
                                    ))
                              ],
                            ),
                            Container(
                              child: Text(
                                contentBrain.getH1Text(),
                                style: TextStyle(
                                  color: Color(style.primaryBlue),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  height: 1.5,
                                  fontSize: 27,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 30),
                              child: Text(
                                contentBrain.getH2Text(),
                                style: TextStyle(
                                  color: Color(style.primaryBlue),
                                  fontFamily: 'Montserrat-bold',
                                  letterSpacing: 1.1,
                                  // fontWeight: FontWeight.w600,
                                  height: 1.5,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Row(
                              children:[
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: FloatingActionButton(
                                    backgroundColor: Color(style.primaryPink),
                                    onPressed: () {
                                        contentBrain.nextContent();
                                        setState((){
                                          if(contentBrain.getNum()==0){
                                            print(contentBrain.getNum());
                                            btnWidth= 30;
                                            btnColor = style.primaryPink;
                                          }if(contentBrain.getNum()==1){
                                            btn2Width= 30;
                                            btn2Color = style.primaryPink;
                                            btnWidth= 10;
                                            btnColor = 0xff888888;
                                          }if(contentBrain.getNum()==2){
                                            btn2Width= 10;
                                            btn2Color = 0xff888888;
                                            btn3Width= 30;
                                            btn3Color = style.primaryPink;
                                          }
                                          if(contentBrain.isFinished()){
                                            print('hh');
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));

                                          }

                                        }

                                      );
                                    },
                                    child:Icon(Icons.keyboard_arrow_right_outlined,
                                      size: 30.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Home()),
                                      );
                                    },
                                    child:Text('Skip',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Montserrat',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),

                              ]
                            ),
                          ],

                        ),
                      ),
                      color: Color(0xffffffff),
                    ),

                ),
              ],
            )
        ),
      ),
    );
  }
}
