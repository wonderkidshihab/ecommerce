import 'package:robozonebd/Models/products.dart';

class User{
  final int id;
  final String email;
  final String password;
  bool loggedIn = false;
  User({this.id, this.password, this.email});
}