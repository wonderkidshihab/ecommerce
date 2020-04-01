import 'package:flutter/cupertino.dart';

class Product {
  final String name;
  final int id;
  List<String> image;
  final String details;
  int price;
  bool offer;
  int offerPrice;
  bool cart;
  bool fav;
  int quantity;

  Product(
      {this.name,
      this.id,
      this.image,
      this.offer,
      this.offerPrice,
      this.price,
      this.details,
      this.cart = false,
      this.fav = false,
      this.quantity = 1,
      });
}

List highlightedProducts = [
  Product(
    id: 0,
    name: "2 Pin Screw Terminal Block Connector 5mm",
    price: 5,
    offer: false,
    image: ["assets/images/mainGrid/2-pin.jpg","assets/images/mainGrid/2-pin.jpg"],
    details:"These side-entry screw terminal blocks have a pitch of 5 mm (0.197″). "
        "Each block has two terminals for the stripped ends of 22 – 14 AWG wires"
        ", and units can slide together to make longer strips. They are rated fo"
        "r 250 V, 16 A (UL)",
  ),
  Product(
    id: 1,
    name: "4 CHANNEL 5V RELAY MODULE",
    price: 180,
    offer: false,
    image: ["assets/images/mainGrid/relayBoard.jpg"],
    details: "What is Lorem Ipsum?"
        "Lorem Ipsum is simply dummy text of the printing and ypesetting "
        "industry. Lorem Ipsum has been the industry's standard dummy "
        "text ever since the 1500s, when an unknown printer took a galley "
        "of type and scrambled it to make a type specimen book. "
        "It has survived not only five centuries, but also the leap "
        "into electronic typesetting, remaining essentially unchanged. "
        "It was popularised in the 1960s with the release of Letraset "
        "sheets containing Lorem Ipsum passages, and more recently with "
        "desktop publishing software like Aldus "
        "ageMaker including versions of Lorem Ipsum",
  ),
  Product(
    id: 2,
    name: "7 Segment Display CA – 1 Digit (0.56in)",
    price: 8,
    offer: false,
    image: ["assets/images/mainGrid/7_segment.jpg"],
    details: "What is Lorem Ipsum?"
        "Lorem Ipsum is simply dummy text of the printing and ypesetting "
        "industry. Lorem Ipsum has been the industry's standard dummy "
        "text ever since the 1500s, when an unknown printer took a galley "
        "of type and scrambled it to make a type specimen book. "
        "It has survived not only five centuries, but also the leap "
        "into electronic typesetting, remaining essentially unchanged. "
        "It was popularised in the 1960s with the release of Letraset "
        "sheets containing Lorem Ipsum passages, and more recently with "
        "desktop publishing software like Aldus "
        "ageMaker including versions of Lorem Ipsum",
  ),
  Product(
    id: 3,
    name: "AMAZON ALEXA | ECHO DOT (2ND GEN)",
    price: 2990,
    offer: false,
    image: ["assets/images/mainGrid/echo_dot.jpg"],
    details: "What is Lorem Ipsum?"
        "Lorem Ipsum is simply dummy text of the printing and ypesetting "
        "industry. Lorem Ipsum has been the industry's standard dummy "
        "text ever since the 1500s, when an unknown printer took a galley "
        "of type and scrambled it to make a type specimen book. "
        "It has survived not only five centuries, but also the leap "
        "into electronic typesetting, remaining essentially unchanged. "
        "It was popularised in the 1960s with the release of Letraset "
        "sheets containing Lorem Ipsum passages, and more recently with "
        "desktop publishing software like Aldus "
        "ageMaker including versions of Lorem Ipsum",
  ),
];

List products = [
  Product(
    id: 0,
    name: "2 Pin Screw Terminal Block Connector 5mm",
    price: 5,
    offer: false,
    image: ["assets/images/mainGrid/2-pin.jpg","assets/images/mainGrid/2-pin.jpg","assets/images/mainGrid/2-pin.jpg"],
    details: "What is Lorem Ipsum?"
        "Lorem Ipsum is simply dummy text of the printing and ypesetting "
        "industry. Lorem Ipsum has been the industry's standard dummy "
        "text ever since the 1500s, when an unknown printer took a galley "
        "of type and scrambled it to make a type specimen book. "
        "It has survived not only five centuries, but also the leap "
        "into electronic typesetting, remaining essentially unchanged. "
        "It was popularised in the 1960s with the release of Letraset "
        "sheets containing Lorem Ipsum passages, and more recently with "
        "desktop publishing software like Aldus "
        "ageMaker including versions of Lorem Ipsum",
  ),
  Product(
    id: 1,
    name: "4 CHANNEL 5V RELAY MODULE",
    price: 180,
    offer: false,
    image: ["assets/images/mainGrid/relayBoard.jpg"],
    details: "What is Lorem Ipsum?"
        "Lorem Ipsum is simply dummy text of the printing and ypesetting "
        "industry. Lorem Ipsum has been the industry's standard dummy "
        "text ever since the 1500s, when an unknown printer took a galley "
        "of type and scrambled it to make a type specimen book. "
        "It has survived not only five centuries, but also the leap "
        "into electronic typesetting, remaining essentially unchanged. "
        "It was popularised in the 1960s with the release of Letraset "
        "sheets containing Lorem Ipsum passages, and more recently with "
        "desktop publishing software like Aldus "
        "ageMaker including versions of Lorem Ipsum",
  ),
  Product(
    id: 2,
    name: "7 Segment Display CA – 1 Digit (0.56in)",
    price: 8,
    offer: false,
    image: ["assets/images/mainGrid/7_segment.jpg"],
    details: "What is Lorem Ipsum?"
        "Lorem Ipsum is simply dummy text of the printing and ypesetting "
        "industry. Lorem Ipsum has been the industry's standard dummy "
        "text ever since the 1500s, when an unknown printer took a galley "
        "of type and scrambled it to make a type specimen book. "
        "It has survived not only five centuries, but also the leap "
        "into electronic typesetting, remaining essentially unchanged. "
        "It was popularised in the 1960s with the release of Letraset "
        "sheets containing Lorem Ipsum passages, and more recently with "
        "desktop publishing software like Aldus "
        "ageMaker including versions of Lorem Ipsum",
  ),
  Product(
    id: 3,
    name: "AMAZON ALEXA | ECHO DOT (2ND GEN)",
    price: 2990,
    offer: false,
    image: ["assets/images/mainGrid/echo_dot.jpg"],
    details: "What is Lorem Ipsum?"
        "Lorem Ipsum is simply dummy text of the printing and ypesetting "
        "industry. Lorem Ipsum has been the industry's standard dummy "
        "text ever since the 1500s, when an unknown printer took a galley "
        "of type and scrambled it to make a type specimen book. "
        "It has survived not only five centuries, but also the leap "
        "into electronic typesetting, remaining essentially unchanged. "
        "It was popularised in the 1960s with the release of Letraset "
        "sheets containing Lorem Ipsum passages, and more recently with "
        "desktop publishing software like Aldus "
        "ageMaker including versions of Lorem Ipsum",
  ),
  Product(
    id: 4,
    name: "AMAZON ALEXA | ECHO DOT (3RD GEN)",
    price: 5000,
    offer: true,
    offerPrice: 3990,
    image: ["assets/images/mainGrid/Alexa.jpg"],
    details: "What is Lorem Ipsum?"
        "Lorem Ipsum is simply dummy text of the printing and ypesetting "
        "industry. Lorem Ipsum has been the industry's standard dummy "
        "text ever since the 1500s, when an unknown printer took a galley "
        "of type and scrambled it to make a type specimen book. "
        "It has survived not only five centuries, but also the leap "
        "into electronic typesetting, remaining essentially unchanged. "
        "It was popularised in the 1960s with the release of Letraset "
        "sheets containing Lorem Ipsum passages, and more recently with "
        "desktop publishing software like Aldus "
        "ageMaker including versions of Lorem Ipsum",
  ),
  Product(
    id: 5,
    name: "Arduino Hatekhori",
    price: 200,
    offer: true,
    offerPrice: 170,
    image: ["assets/images/mainGrid/arduino_hathekhori.jpg"],
    details: "What is Lorem Ipsum?"
        "Lorem Ipsum is simply dummy text of the printing and ypesetting "
        "industry. Lorem Ipsum has been the industry's standard dummy "
        "text ever since the 1500s, when an unknown printer took a galley "
        "of type and scrambled it to make a type specimen book. "
        "It has survived not only five centuries, but also the leap "
        "into electronic typesetting, remaining essentially unchanged. "
        "It was popularised in the 1960s with the release of Letraset "
        "sheets containing Lorem Ipsum passages, and more recently with "
        "desktop publishing software like Aldus "
        "ageMaker including versions of Lorem Ipsum",
  ),
];

class CartProducts{
  Product product;

  int quantity;
  CartProducts({@required this.product,this.quantity = 1});
}


List<Product> productCart = [];
List<Product> productFavorite = [];
