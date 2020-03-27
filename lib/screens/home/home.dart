import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:robozonebd/screens/home/drawer.dart';

import 'carousel.dart';

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
      body: Center(
        child: Container(
          child: ListView(
            children: <Widget>[
              CarouselWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
