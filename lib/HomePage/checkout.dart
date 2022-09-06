import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:locawash/style.dart';
class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int homeColor= 0xffd0cfcf;
  Style style = Style();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Color(0xffffffff),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xff414141)),
        title: Center(
          child: Text('Checkout',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff333333),
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
            ),
          ),
        ),
        leading: BackButtonIcon(),
      ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text('Product',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff333333),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),),
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
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text('Payment Method',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff333333),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 28.0,vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Color(0xffc44646))
                  ),
                  child:Row(
                    children: [
                      Icon(CupertinoIcons.creditcard,
                      color: Colors.black,
                      size: 30,),
                    ],
                  )
                ),
              ],
            ),
          ),
        ) ,

    );
  }
}
