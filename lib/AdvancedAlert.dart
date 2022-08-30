import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Style.dart';

class AdvancedAlert extends StatelessWidget {
  final Style style = Style();
  AdvancedAlert ({required this.head, required this.desc, required this.onPressedCustom, required this.icon}){

  }
  String head;
  String desc;
  IconData icon;
  final VoidCallback? onPressedCustom;
  @override
  Widget build(BuildContext context) {
    Style style = Style();
    return Dialog(
        shape: BorderDirectional(),
        insetPadding:EdgeInsets.zero,
        alignment: Alignment.bottomCenter,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: <Widget>[
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height/2.9,
                padding: EdgeInsets.fromLTRB(30, 50, 30, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      child: Text(head,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text(
                        desc,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1.5,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Color(0xffbdbdbd)
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(style.primaryPink),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: TextButton(
                          onPressed: (){
                            onPressedCustom!();
                          },
                          child: Text('Got it',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xffffffff),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    )

                  ],
                )
            ),
            Positioned(

              child: CircleAvatar(
                backgroundColor: Color(0xffe8e8e8),
                radius: 50,
                child: Icon(
                  icon,
                  color: Color(style.primaryPink),
                  size: 60,
                ),
              ),
              top: -50,
            )
          ],
        )
      //
      // Stack(
      //   alignment: Alignment.bottomCenter,
      //   children: [

      //   ],
      // ),
    );
  }
}