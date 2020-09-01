import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(new MyApp());

String username = '';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Helper - The Caretaker Locator',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController blurb = new TextEditingController();

  Future<List> senddata() async {
    final response = await http
        .post("https://thehelperapp.000webhostapp.com/insert.php", body: {
      "name": name.text,
      "email": email.text,
      "blurb": blurb.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add caretaker to directory"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                "Username",
                style: TextStyle(fontSize: 18.0),
              ),
              TextField(
                controller: name,
                decoration: InputDecoration(hintText: 'name'),
              ),
              Text(
                "Email",
                style: TextStyle(fontSize: 18.0),
              ),
              TextField(
                controller: email,
                decoration: InputDecoration(hintText: 'Email'),
              ),
              Text(
                "Blurb",
                style: TextStyle(fontSize: 18.0),
              ),
              TextField(
                controller: blurb,
                decoration:
                    InputDecoration(hintText: 'Information about your service'),
              ),
              RaisedButton(
                child: Text("Register"),
                onPressed: () {
                  senddata();
                  print("button pressed");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
