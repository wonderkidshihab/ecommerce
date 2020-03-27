import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Robozone'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
            IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){}),
          ],
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
