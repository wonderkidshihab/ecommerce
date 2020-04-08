import 'package:flutter/material.dart';
import 'package:robozonebd/screens/login/login.dart';

import 'Models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var user = User();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Rubik"),
      debugShowCheckedModeBanner: false,
      title: 'Robozone',
      home: FirstScreen(),
    );
  }
}
