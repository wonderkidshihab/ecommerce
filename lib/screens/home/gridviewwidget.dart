import 'package:flutter/material.dart';
import 'package:robozonebd/Models/products.dart';

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
        itemCount: products.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: MediaQuery.of(context).size.width <= 600 ? 2: 4),
        itemBuilder: (context, index) {
          var item = products[index];
          return ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Card(
              elevation: 3,
              child: Hero(
                tag: "prod_name",
                child: GridTile(
                  header: Container(color: Colors.red.withOpacity(0.5),child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(item.name, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  )),
                  child: Image(image: AssetImage(item.image)),
                  footer: Container(
                    color: Colors.blue.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:3.5),
                      child: Center(
                        child: Text(
                          "৳ ${item.price.toString()}",
                          style: !item.offer ? TextStyle(
                            color: Colors.white
                          ): TextStyle(
                            color: Colors.red,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
