import 'package:flutter/material.dart';
import 'package:locawash/AppBar.dart';
import 'package:locawash/Style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:locawash/Photos.dart';
import 'package:locawash/Users.dart';
class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  Style style =Style();
  int homeColor= 0xffd0cfcf;
  Photos photosData = Photos();
  Users usersData = Users();
  String photoLink='';
  var  photoData;
  var userData;
  Future getPhotos() async{
    photoData = await photosData.getData();
    print(photoData);
  }
  @override
  void initState(){
    super.initState();
    // getPhotos();
    getItems();
    // getUsers();
  }

  // Future getUsers() async {
  //   userData = await usersData.getData();
  //   print(userData);
  // }
  List<Widget> MYLIST=[];
  Future<void> getItems() async{
    photoData = await photosData.getData();
    print(photoData);
    Widget item = Container();
    List<Widget> listItems = [];
    for(var photo in photoData) {
      item = Expanded(
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                    color: Color(0xffb4b2b2),
                    blurRadius: 25,
                    offset: Offset(0, 10)
                )
              ]
          ),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .width / 3,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffd0cfcf)
                    ),

                    child: Stack(
                      children: [

                        Image.network(
                          photo['thumbnailUrl'],
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                          // alignment: Alignment.centerRight,

                        ),
                        Positioned(
                          top: 5,
                          left: 170,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
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

                    )
                ),
                Text('Service',
                    style: TextStyle(
                        color: Color(style.primaryPink))
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(photo['title'],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        height: 1.5
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.person,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('5 / 20')
                        ],
                      ),
                    ),
                    Text("\$15,00",
                      style: TextStyle(
                        color: Color(style.primaryPink),
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
      listItems.add(item);
      MYLIST = listItems;
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: AppBarCustom(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: ListView(
              children: [
                Expanded(
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
              ],
            ),
          ),
        ));
  }
}
