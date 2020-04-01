
import 'package:flutter/material.dart';
import 'package:robozonebd/Models/products.dart';
import 'package:robozonebd/screens/product/product_details.dart';

class GridViewWidget extends StatefulWidget {
  @override
  _GridViewWidgetState createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width <= 600 ? 2 : 4),
        itemBuilder: (context, index) {
          var item = products[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetails(item)));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Stack(
                children: <Widget>[
                  Card(
                    elevation: 2,
                    child: Hero(
                      tag: "prod${item.id}",
                      child: GridTile(
                        header: Container(
                            color: Colors.white.withOpacity(0.75),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                item.name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                              ),
                            )),
                        child: Image(image: AssetImage(item.image[0])),
                        footer: Container(
                          color: Colors.blue.withOpacity(0.5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3.5),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "৳ ${item.price.toString()}",
                                    style: item.offer
                                        ? TextStyle(
                                            color: Colors.red,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            decorationColor: Colors.white,
                                            decorationThickness: 3,
                                            fontWeight: FontWeight.bold)
                                        : TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: item.offer ? 10 : 0,
                                  ),
                                  item.offer
                                      ? Text(
                                          "৳ ${item.offerPrice.toString()}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )
                                      : SizedBox.shrink(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  item.offer
                      ? Positioned(
                          bottom: 0,
                          left: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "Offer",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
