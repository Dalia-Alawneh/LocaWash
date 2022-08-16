import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:locawash/Home.dart';
import 'package:locawash/style.dart';

import 'Login.dart';
import 'Register.dart';

class Intro extends StatefulWidget {
   Intro({Key key}) : super(key: key);
  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  Home home = Home();

  @override
  Widget build(BuildContext context) {
    Style style=Style();
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
                            )
                          ],
                        ),
                      ),
                    )

                ),
                Expanded(
                    flex: 4,
                    child: Container(
                      color: Color(0xffffffff),
                    )

                )
              ],
            )
        ),
      ),
    );
  }
}
