import 'package:flutter/material.dart';
import 'package:locawash/AppBar.dart';
import 'package:locawash/Style.dart';
import 'package:carousel_slider/carousel_slider.dart';
<<<<<<< HEAD
=======
import 'package:locawash/Photos.dart';
import 'package:locawash/Users.dart';
>>>>>>> 337531d6a0d8783363fbef9d2e070e82bc30654b
class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  Style style =Style();
  int homeColor= 0xffd0cfcf;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: AppBarCustom(),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(homeColor),
                            radius: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Good Morning !!'
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text('Adrew Colla', style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Container(
                        child: Icon(
                          Icons.notifications,
                          size: 28,
                        ),
                      ),
                      // Positioned(
                      //     child: Container(
                      //       color: Colors.red,
                      //       width: 10,
                      //       height: 10,
                      //     ))

                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffeeeded),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow:[
                        BoxShadow(
                            color: Color(0xffb4b2b2),
                            blurRadius: 25,
                            offset: Offset(0,10)
                        )
                      ]
                  ),
                  margin: EdgeInsets.only(top: 30, bottom: 30),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Today's Queue" ,
                                    style: TextStyle(
                                      height: 1.8,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                  Text('number of washing queues today',
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: VerticalDivider(
                                width: 40,
                                thickness: 2.5,
                                color: Color(0xff908a8a),

                              ),
                            ),
                            Icon(
                              Icons.alarm,
                              color: Color(0xff8871E6),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 30,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Color(style.primaryBlue),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text('5',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffffffff)
                                ),
                              )),
                            )


                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff8871E6),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25))
                        ),
                        padding: EdgeInsets.all(10),

                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0, right: 55),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Last Wash" ,
                                          style: TextStyle(
                                            height: 1.8,
                                            fontSize: 14,
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                          ),
                                        ),
                                        Text('Last listed in net clean',
                                          style: TextStyle(
                                            color: Color(0xffffffff),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: VerticalDivider(
                                      width: 62,
                                      thickness: 2.5,
                                      color: Color(0x61e8e8e8),

                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('22 May',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                            color: Color(0xffffffff)
                                        ),
                                      ),
                                      Text('09:15 AM',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xffffffff)
                                        ),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Text('Preferred Service',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
<<<<<<< HEAD
                CarouselSlider(items: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffffffff),
                            boxShadow:[
                              BoxShadow(
                                  color: Color(0xffb4b2b2),
                                  blurRadius: 25,
                                  offset: Offset(0,10)
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Positioned(
                            //

                            //   ),
                            // ),
                            Container(
                              height: 120,
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffd0cfcf)
                              ),

                                child: Container(
                                  alignment: Alignment.topRight,
                                  child: Stack(
                                    children: [
                                            Image.asset('images/pexels-brett-sayles-1322185.jpg',),
                                      Positioned(
                                        top: 5,
                                        left: 130,
                                        child: Container(
                                          color: Colors.white,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Icon(Icons.star,
                                                size: 18,
                                                color: Color(style.primaryPink),
                                              ),
                                              Text('4.5',
                                                style: TextStyle(
                                                    color: Color(style.primaryPink)
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],

                                  ),
                                )
                            ),
                            Text('Service',
                                style: TextStyle(
                                    color: Color(style.primaryPink))
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text('Premium Car Wash',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
=======
                CarouselSlider(
                  // carouselController: CarouselController(
                  //
                  // ),
                    items:MYLIST,
                    options: CarouselOptions(
                        height: MediaQuery.of(context).size.height/2.7
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 25 , bottom: 30),
                  child: Text('Favorite Product',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff333333),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: GestureDetector(
                          child: Row(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                margin: EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(homeColor)
>>>>>>> 337531d6a0d8783363fbef9d2e070e82bc30654b
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Zulio Car Oil',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff333333),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text('Car Engine Oil',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff6c6b6b),
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
<<<<<<< HEAD
                    ),
                  ], options: CarouselOptions(
                    height: MediaQuery.of(context).size.height/3.2
                  )),
                Padding(
                    padding: const EdgeInsets.only(top: 25 , bottom: 30),
                    child: Text('Favorite Product',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff333333),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),
                    ),
=======
                      Text("\$22.5",
                        style: TextStyle(
                          color: Color(style.primaryPink),
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
>>>>>>> 337531d6a0d8783363fbef9d2e070e82bc30654b
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10 ,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: GestureDetector(
                          child: Row(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                margin: EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(homeColor)
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Zulio Car Oil',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff333333),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text('Car Engine Oil',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff6c6b6b),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      Text("\$22.5",
                        style: TextStyle(
                          color: Color(style.primaryPink),
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10 ,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: GestureDetector(
                          child: Row(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                margin: EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(homeColor)
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Zulio Car Oil',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff333333),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text('Car Engine Oil',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff6c6b6b),
                                    ),
<<<<<<< HEAD
                                  ],
                                ),

                              ],
                            ),
=======
                                  ),
                                ],
                              ),

                            ],
>>>>>>> 337531d6a0d8783363fbef9d2e070e82bc30654b
                          ),
                        ),
                      ),
                      Text("\$22.5",
                        style: TextStyle(
                          color: Color(style.primaryPink),
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
