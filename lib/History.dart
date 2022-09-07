import 'package:flutter/material.dart';
import 'AppBar.dart';
import 'product_history.dart';

class History extends StatelessWidget {
  int homeColor= 0xffd0cfcf;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: AppBarCustom(),
        // appBar: AppBar(
        //   title: Text('Selling product'),
        // ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
              child: Text('History Transaction', style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
                textAlign: TextAlign.center, ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 20, bottom: 10, top: 30),
                child: Text('Today', style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),)),
            HistoryProduct(homeColor: homeColor, ProductName: 'Premium Car Wash', ProductDesc: 'Washing Order 5', ProductPrice: '\$18.00'),
            Divider(
              height: 1,
              thickness: 1,
              indent: 50,
              endIndent: 50,
            ),
            HistoryProduct(homeColor: homeColor, ProductName: 'Premium Carpet Wash', ProductDesc: 'Finished in 24 may 2022', ProductPrice: '\$15.00'),
            Divider(
              height:1,
              thickness: 1,
              indent: 50,
              endIndent: 50,
            ),
            Padding(
                padding: EdgeInsets.only(left: 20, top: 30, bottom: 10),
                child: Text('Yesterday', style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),)),
            HistoryProduct(homeColor: homeColor, ProductName: 'Zulio Car oil', ProductDesc: 'Product from Locawash', ProductPrice: '\$22.50'),
            Divider(
              height: 1,
              thickness: 1,
              indent: 50,
              endIndent: 50,
            ),
            HistoryProduct(homeColor: homeColor, ProductName: 'Enzena Car Freshener', ProductDesc: 'Product from Locawash', ProductPrice: '\$8.30'),
            Divider(
              height: 1,
              thickness: 1,
              indent: 50,
              endIndent: 50,
            ),
            HistoryProduct(homeColor: homeColor, ProductName: 'Broom and Shovel', ProductDesc: 'Product from Locawash', ProductPrice: '\$7.00'),
            Divider(
              height: 1,
              thickness: 1,
              indent: 50,
              endIndent: 50,
            ),
          ],
        ),
      ),
    );
  }
}
