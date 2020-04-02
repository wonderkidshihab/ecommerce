import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:robozonebd/Models/products.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Product> _products;
  TextEditingController _textEditingController;

  @override
  void initState() {
    _products = [];
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: Text('Favorites'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical:8.0),
            child: Container(
              width: MediaQuery.of(context).size.width*0.6,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:15.0),
                child: TextField(
                  decoration: InputDecoration.collapsed(hintText: "search"),
                ),
              ),
            ),
          ),
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
