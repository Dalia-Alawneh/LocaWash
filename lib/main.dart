import 'dart:async';
import 'package:flutter/material.dart';
import 'package:locawash/HomePage/checkout.dart';
import 'package:locawash/IntrodPage/Intro.dart';
import 'package:locawash/style.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        // fontFamily: 'Montserrat',
      ),
      home: SplashScreen(),

    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key ? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 4),
        ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>Intro()))
    );
  }
  @override
  Widget build(BuildContext context) {
    Style style=Style();
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 7,
                    child: Container(
                      color: Color(style.primaryBlue),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 60),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('LOKAWASH',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text('Best friend in cleanliness',
                              style: TextStyle(
                                color: Color(0xffdcd6d6),
                                fontFamily: 'Montserrat-Bold',

                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 100),
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 6,
                                  semanticsLabel:'Linear progress indicator'
                              ),
                            ),
                          ],
                        ),
                      ),
                    )

                ),
                Expanded(
                    flex: 3, child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors:<Color>[
                          Color(style.gradientCenter),
                          Color(style.gradientTop),
                          Color(style.gradientTop),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        // stops: [0.2,0.3,0.2,0.4]
                    ),

                  ),
                ),


                )
              ],
            )
        ),
      ),
    );
  }
}


