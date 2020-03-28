class Product{
  final String name;
  final int id;
  final String image;
  int price;
  bool offer;
  int offerPrice;

  Product({this.name, this.id, this.image, this.offer, this.offerPrice, this.price});

}

List products = [
  Product(
      id: 0,
      name: "2 Pin Screw Terminal Block Connector 5mm",
      price: 5,
      offer: false,
      image: "assets/images/mainGrid/2-pin.jpg"),
  Product(
      id: 1,
      name: "4 CHANNEL 5V RELAY MODULE",
      price: 180,
      offer: false,
      image: "assets/images/mainGrid/relayBoard.jpg"),
  Product(
      id: 2,
      name: "7 Segment Display CA – 1 Digit (0.56in)",
      price: 8,
      offer: false,
      image: "assets/images/mainGrid/7_segment.jpg"),
  Product(
      id: 3,
      name: "AMAZON ALEXA | ECHO DOT (2ND GEN)",
      price: 2990,
      offer: false,
      image: "assets/images/mainGrid/echo_dot.jpg"),
  Product(
      id: 4,
      name: "AMAZON ALEXA | ECHO DOT (3RD GEN)",
      price: 5000,
      offer: true,
      offerPrice: 3990,
      image: "assets/images/mainGrid/Alexa.jpg"),
  Product(
      id: 5,
      name: "Arduino Hatekhori",
      price: 200,
      offer: true,
      offerPrice: 170,
      image: "assets/images/mainGrid/arduino_hathekhori.jpg"),
  Product(
      id: 0,
      name: "2 Pin Screw Terminal Block Connector 5mm",
      price: 5,
      offer: true,
      offerPrice: 4,
      image: "assets/images/mainGrid/2-pin.jpg"),
  Product(
      id: 0,
      name: "2 Pin Screw Terminal Block Connector 5mm",
      price: 5,
      offer: true,
      offerPrice: 4,
      image: "assets/images/mainGrid/2-pin.jpg"),
  Product(
      id: 0,
      name: "2 Pin Screw Terminal Block Connector 5mm",
      price: 5,
      offer: true,
      offerPrice: 4,
      image: "assets/images/mainGrid/2-pin.jpg"),
];
