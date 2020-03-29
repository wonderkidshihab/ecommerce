import 'package:flutter/material.dart';
import 'package:robozonebd/Globals/Scaffold.dart';
import 'package:robozonebd/Models/products.dart';
import 'package:robozonebd/screens/product/mainPart.dart';

class ProductDetails extends StatefulWidget {
  final Product _product;

  ProductDetails(this._product);

  @override
  _ProductDetailsState createState() => _ProductDetailsState(_product);
}

class _ProductDetailsState extends State<ProductDetails> {
  final Product _product;

  _ProductDetailsState(this._product);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
        child: ListView(
      children: <Widget>[
        MainPartProduct(_product),
        Container(
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0.0),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.75,
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "BUY",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                color: Colors.red,
                onPressed: () {},
                icon: Icon(Icons.add_shopping_cart),
              ),
              IconButton(
                color: Colors.red,
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10.0),
          child: Container(
            height: 500,
            child: Text(
              _product.details+_product.details,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 15
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
