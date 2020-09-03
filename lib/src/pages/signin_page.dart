import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: <Widget>[
                Text("Sign In",
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold))
              ],
            )));
  }
}
