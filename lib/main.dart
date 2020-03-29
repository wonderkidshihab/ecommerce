import 'package:flutter/material.dart';
import 'package:robozonebd/Globals/Scaffold.dart';
import 'package:robozonebd/Globals/drawer.dart';
import 'package:robozonebd/Models/products.dart';
import 'package:robozonebd/screens/home/home.dart';
import 'package:robozonebd/screens/product/product_details.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Robozone',
      home: ScaffoldWidget(
        child: Home(),
      ),
    );
  }
}
