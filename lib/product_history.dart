import 'package:flutter/material.dart';
import 'style.dart';

class HistoryProduct extends StatelessWidget {
  HistoryProduct({
    required this.homeColor,
    required this.ProductName,
    required this.ProductDesc,
    required this.ProductPrice,
  });

  final int homeColor;
  final String ProductName;
  final String ProductDesc;
  final String ProductPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10 ,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: GestureDetector(
              child: Row(
                children: [

                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Color(homeColor),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${ProductName}',
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
                      Text('${ProductDesc}',
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
          Text('${ProductPrice}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}