import 'package:flutter/material.dart';
import 'package:robozonebd/Globals/Scaffold.dart';
import 'package:robozonebd/backend/auth.dart';
import 'package:robozonebd/enum.dart';
import 'package:robozonebd/screens/cart.dart';
import 'package:robozonebd/screens/home/home.dart';

class SignUpWidget extends StatefulWidget {
  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameEditingController = TextEditingController();
  final TextEditingController _lastNameEditingController = TextEditingController();
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _password1EditingController =
      TextEditingController();
  final TextEditingController _password2EditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.85;
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Image(
                image: AssetImage("assets/images/logo/icon-transparent.png"),
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Welcome to",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "RobozoneBD",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.25),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: _firstNameEditingController,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.75),
                        fontSize: 18,
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: "First Name",
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.75),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.25),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: _lastNameEditingController,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.75),
                        fontSize: 18,
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: "Last Name",
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.75),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: containerWidth,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    validator: (val) =>
                        val.contains("@") ? null : "Enter a valid email",
                    controller: _emailEditingController,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.75),
                      fontSize: 18,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.75),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: containerWidth,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    validator: (val) =>
                        val.length < 6 ? "Password is weak" : null,
                    controller: _password1EditingController,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.75),
                      fontSize: 18,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.75),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: containerWidth,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    validator: (val) =>
                        val.length < 6 ? "Password is weak" : null,
                    controller: _password2EditingController,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.75),
                      fontSize: 18,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.75),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  width: containerWidth,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.deepPurple, Colors.red[900]],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person_outline,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "SUBMIT",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ScaffoldWidget(child:Home())));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
