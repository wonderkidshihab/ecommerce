import 'package:flutter/material.dart';
import 'package:robozonebd/Models/products.dart';
class MainPartProduct extends StatelessWidget {
  final Product _product;
  MainPartProduct(this._product);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: GridTile(
        child: Image(
          image: AssetImage(_product.image),
        ),
        footer: Container(
          color: Colors.blue.withOpacity(0.5),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Text(
                    "${_product.name}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "৳ ${_product.price.toString()}",
                      style: _product.offer
                          ? TextStyle(
                          color: Colors.red,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.white,
                          decorationThickness: 3,
                          fontSize: 10,
                          fontWeight: FontWeight.bold)
                          : TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: _product.offer ? 10 : 0,
                    ),
                    _product.offer
                        ? Text(
                      "৳ ${_product.offerPrice.toString()}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                        : SizedBox.shrink(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
