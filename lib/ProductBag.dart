import 'package:flutter/material.dart';
import 'Products.dart';
import 'AppBar.dart';

class ProductBag extends StatelessWidget {
  int homeColor= 0xffd0cfcf;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: AppBarCustom(),
        // appBar: AppBar(
        //   title: Text('Selling product'),
        // ),
        body: ListView(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
                child: Text('Selling products', style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center, ),
              ),
              Product(homeColor: homeColor, ProductName: 'Zulio Car Oil', ProductDesc: 'Car Engine Oil', ProductPrice: '\$22.5'),
              Product(homeColor: homeColor, ProductName: 'Enzena Car Freshener', ProductDesc: 'Car Freshener', ProductPrice: '\$8.3'),
              Product(homeColor: homeColor, ProductName: 'Car Wipe', ProductDesc: 'Duster', ProductPrice: '\$4'),
              Product(homeColor: homeColor, ProductName: 'Broom and Shovel', ProductDesc: 'Clean Tool', ProductPrice: '\$7'),
              Product(homeColor: homeColor, ProductName: 'Cleaning Spray', ProductDesc: 'Clean Tool', ProductPrice: '\$8.3'),
              Product(homeColor: homeColor, ProductName: 'Neck Pillow', ProductDesc: 'Pillow', ProductPrice: '\$13.3'),
              Product(homeColor: homeColor, ProductName: 'Zulio Car Oil', ProductDesc: 'Car Engine Oil', ProductPrice: '\$22.5'),
              Product(homeColor: homeColor, ProductName: 'Enzena Car Freshener', ProductDesc: 'Car Freshener', ProductPrice: '\$8.3'),
              Product(homeColor: homeColor, ProductName: 'Car Wipe', ProductDesc: 'Duster', ProductPrice: '\$4'),
              Product(homeColor: homeColor, ProductName: 'Broom and Shovel', ProductDesc: 'Clean Tool', ProductPrice: '\$7'),
              Product(homeColor: homeColor, ProductName: 'Cleaning Spray', ProductDesc: 'Clean Tool', ProductPrice: '\$8.3'),
              Product(homeColor: homeColor, ProductName: 'Neck Pillow', ProductDesc: 'Pillow', ProductPrice: '\$13.3'),
            ],
        ),
      ),
    );
  }
}
