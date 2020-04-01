import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:robozonebd/Models/products.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  List<Product> _products = productFavorite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: Text('Favorites'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: _products.length,
            itemBuilder: (context, index) {
              Product product = _products[index];
              return Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      product.image[0],
                      height: 80,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 200,
                      child: Text(
                        "${product.name}",
                        textScaleFactor: 1.16,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
