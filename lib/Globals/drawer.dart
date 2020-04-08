import 'package:flutter/material.dart';
import 'package:robozonebd/Globals/Scaffold.dart';
import 'package:robozonebd/Models/user.dart';
import 'package:robozonebd/screens/cart.dart';
import 'package:robozonebd/screens/favorites.dart';
import 'package:robozonebd/screens/home/home.dart';
class DrawerWidget extends StatelessWidget {
  User _user;
  @override
  Widget build(BuildContext context) {
    _user = User();
    return Drawer(
      elevation: 0,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Column(
              children: <Widget>[
                Text(_user.name ?? "User Name"),
                Text(_user.email ?? "example"),
              ],
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ScaffoldWidget(child: Home())));
                },
                child: ListTile(
                  leading: Icon(Icons.home, color: Colors.red,),
                  title: Text("Home")
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  leading: Icon(Icons.account_circle, color: Colors.red,),
                  title: Text("My Account")
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CartScreen()));
                },
                child: ListTile(
                  leading: Icon(Icons.shopping_basket, color: Colors.red,),
                  title: Text("My cart")
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  leading: Icon(Icons.category, color: Colors.red,),
                  title: Text("Categories")
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FavoritesScreen()));
                },
                child: ListTile(
                  leading: Icon(Icons.favorite, color: Colors.red,),
                  title: Text("Favorites")
                ),
              ),
              Divider(color: Colors.red,),
              InkWell(
                onTap: (){},
                child: ListTile(
                  leading: Icon(Icons.settings, color: Colors.grey,),
                  title: Text("Settings")
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  leading: Icon(Icons.help, color: Colors.green,),
                  title: Text("About Us")
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
