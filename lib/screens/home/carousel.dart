import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:robozonebd/Models/products.dart';
import 'package:robozonebd/screens/product/product_details.dart';

class CarouselWidget extends StatefulWidget {
  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 600,
      child: Carousel(
        boxFit: BoxFit.fitHeight,
        images: highlightedProducts.map((product) => AssetImage(product.image)).toList(),

          onImageTap: (index) {
          print(index);
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetails(highlightedProducts[index])));
          },

        indicatorBgPadding: 4,
        dotColor: Colors.red[100],
        dotIncreasedColor: Colors.red[400],
        dotSize: 4,
        dotBgColor: Colors.white.withOpacity(0),
        animationCurve: Curves.linearToEaseOut,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
  }
}
