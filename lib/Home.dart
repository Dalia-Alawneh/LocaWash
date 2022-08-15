import 'package:flutter/material.dart';
import 'package:locawash/Login.dart';
import 'Register.dart';
import 'style.dart';
class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);
  final Style style = Style();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[
                    Color(style.gradientTop),
                    Color(style.gradientTop),
                    Color(style.gradientCenter),
                    Color(style.gradientCenter),
                    Color(style.gradientCenter),
                    Color(style.gradientBottom),

                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0,0.1, 0.2,0.3,0.4,0.5]
              ),

            ),
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
                      color: Color(style.primaryBlue),
                      child: Column(
                        children:  [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(55, 40,55,0),
                            child: Text('We have cleaned more than 10k+ cars',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w600,
                              fontSize: 26,
                              height: 1.5
                            ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(35,0,35,0),
                            child: Text('Lorem ipsum dolor sit amet consectetur adipisicing elit. autem?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                              color: Color(0xf0cdc9c9),
                              fontSize: 15,
                                fontFamily: 'Montserrat-Bold',
                                height: 1.5
                            ),
                            ),
                          ),

                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.fromLTRB(15,40,15,0),
                            decoration: BoxDecoration(
                              color: Color(style.primaryPink),
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(
                              style: TextButton.styleFrom(

                                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 100)
                              ),
                              onPressed: (){
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> Login()));
                              },

                              child: Text('Login',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 20,
                                fontFamily: 'Montserrat-Bold',
                                letterSpacing: 1.5
                              ),
                            ),),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don\'t have an account?',
                              style: TextStyle(
                                color: Color(0xf0cdc9c9),
                                fontFamily: 'Montserrat-Bold',
                              ),
                              ),
                              TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                              },
                                  child: Text('Register',
                                  style: TextStyle(
                                    color: Color(style.primaryPink),
                                    fontFamily: 'Montserrat-Bold',

                                  ),
                                  ))
                            ],
                          )
                        ],
                      ),
                    )

                )
              ],
            )
        ),
      ),
    );
  }
}
