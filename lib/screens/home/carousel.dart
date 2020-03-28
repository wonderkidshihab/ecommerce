import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

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
        boxFit: BoxFit.cover,
        images: [
          AssetImage("assets/images/Carousel/carousel_placeholder_image.png"),
          AssetImage("assets/images/Carousel/carousel_placeholder_image.png"),
          AssetImage("assets/images/Carousel/carousel_placeholder_image.png"),
          AssetImage("assets/images/Carousel/carousel_placeholder_image.png"),
          AssetImage("assets/images/Carousel/carousel_placeholder_image.png"),
        ],

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
