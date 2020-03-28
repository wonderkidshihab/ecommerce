import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          getListItem("assets/images/horizontalList/arduino_logo.png", "Arduino Boards", "Arduino"),
          getListItem("assets/images/horizontalList/book_logo.png", "Robotic Books", "book"),
          getListItem("assets/images/horizontalList/bulb_logo.png", "Lumens Bulb", "Lumens"),
          getListItem("assets/images/horizontalList/arduino_logo.png", "Arduino Boards", "Arduino"),
          getListItem("assets/images/horizontalList/book_logo.png", "Robotic Books", "book"),
          getListItem("assets/images/horizontalList/bulb_logo.png", "Lumens Bulb", "Lumens"),
        ],
      ),
    );
  }

  Widget getListItem(String imageLocation, String imageHeading, String link) {
    return GestureDetector(
      onTap: (){
        print("Open Link $link");
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10.0),
        child: Container(
          width: 100,
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage(imageLocation),
                height: 100,
                color: Colors.red,
              ),
              Text(imageHeading),
            ],
          ),
        ),
      ),
    );
  }
}
