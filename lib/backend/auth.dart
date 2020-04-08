import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:robozonebd/Models/user.dart';
class Authentication{
  userSignIn() async {
    var file = await rootBundle.loadString("assets/users.json");
    var jsonDecoded = json.decode(file.toString());
    List users = jsonDecoded.map((data) => User.userFromJson(data)).toList();
    return users[0];
  }
}