import 'package:flutter/material.dart';
import 'package:robozonebd/Globals/drawer.dart';
import 'package:robozonebd/screens/cart.dart';
import 'package:robozonebd/screens/search/serchScreen.dart';
class ScaffoldWidget extends StatelessWidget {
  final Widget child;

  ScaffoldWidget({this.child});

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
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchScreen()));
            },
          ),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CartScreen()));
              }),
        ],
      ),
      drawer: DrawerWidget(),
      body: child,
    );
  }
}
