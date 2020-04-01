import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:robozonebd/Models/products.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Product> _products = productCart;

  @override
  Widget build(BuildContext context) {
    double totalprice = 0;
    _products.forEach(
      (product) {
        totalprice += product.offer
            ? (product.offerPrice * product.quantity)
            : (product.price * product.quantity);
      },
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: Text('Cart'),
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
                  SizedBox(width: 10,),
                  Container(
                      width: 200,
                      child: Text("${product.name}", textScaleFactor: 1.16,)),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              product.quantity += 1;
                            });
                          },
                          child: Icon(Icons.arrow_drop_up),
                        ),
                        Text(
                          "${product.quantity}",
                          style: TextStyle(fontSize: 12),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (product.quantity > 1) {
                                product.quantity -= 1;
                              }
                            });
                          },
                          child: Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),
                  ),
                ]),
              );
            },
          ),
          Positioned(
            bottom: 0,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Total:",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.75),
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      Text("৳ $totalprice",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.90),
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20),
                        child: Text(
                          "Check out",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
