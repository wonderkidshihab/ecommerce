import 'package:robozonebd/Models/products.dart';

class User{
  final int id;
  final String name;
  final String email;
  final String password;
  bool loggedIn = false;
  User({this.id,this.name, this.password, this.email});

  factory User.userFromJson(Map<String, dynamic> json){
    return User(
      id: json["id"],
      name: json["name"],
      email: json["email"],
      password: json["password"],
    );
  }

}