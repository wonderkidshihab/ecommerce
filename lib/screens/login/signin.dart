import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:robozonebd/Globals/Scaffold.dart';
import 'package:robozonebd/Models/user.dart';
import 'package:robozonebd/backend/auth.dart';
import 'package:robozonebd/enum.dart';
import 'package:robozonebd/main.dart';
import 'package:robozonebd/screens/home/home.dart';

class SignInWidget extends StatefulWidget {
  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _passwordEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 50,),
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
                      style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
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
                width: MediaQuery.of(context).size.width * 0.75,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
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
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text("Forgot password?",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.75,
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
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () async {
                  User user = await Authentication().userSignIn();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>  ScaffoldWidget(child:Home())));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
