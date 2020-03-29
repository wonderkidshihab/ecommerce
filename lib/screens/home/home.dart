import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:robozonebd/Globals/drawer.dart';
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
    return ListView(
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
    );
  }
}
