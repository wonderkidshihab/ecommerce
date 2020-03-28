import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:robozonebd/screens/home/drawer.dart';
import 'package:robozonebd/screens/home/horizontal_list.dart';

import 'carousel.dart';
import 'gridviewwidget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: Text('Robozone'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: DrawerWidget(),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          CarouselWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
            child: Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          ),
          HorizontalList(),
          SizedBox(height: 10,),
          GridViewWidget(),
        ],
      ),
    );
  }
}
