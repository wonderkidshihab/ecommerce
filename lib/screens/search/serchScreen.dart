import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:robozonebd/Models/products.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    List<Product> _products = [];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: TextField(
                          controller: _textEditingController,
                          decoration: InputDecoration.collapsed(
                            hintText: "search",
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          onChanged: (val){
                            products.forEach((product){
                              print(val);
                              if(product.name.contains(val) || product.details.contains(val)){
                                setState(() {
                                  _products.add(product);
                                });
                              }
                            });
                          },
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
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
