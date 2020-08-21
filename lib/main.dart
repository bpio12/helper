/* import 'package:flutter/material.dart';
//import 'mocks/mock_location.dart';
import 'location_list.dart';
import 'mocks/mock_service.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

/* //import 'package:google_sign_in/google_sign_in.dart';
Future getData() async {
  var url = 'https://thehelperapp.000webhostapp.com/get.php';
  http.Response response = await http.get(url);
  var data = jsonDecode(response.body);
  print(data.toString());
  return data;
}

class User {
  String name;
  String email;

  User(this.name, this.email);

  factory User.fromJson(dynamic json) {
    return User(json['name'] as String, json['email'] as String);
  }

  @override
  String toString() {
    return '{ ${this.name}, ${this.email} }';
  }
}
 */
void main() {
  /* print('hello');
  Future objText = getData(); */
  //var data = objText.toString();
 // User user = User.fromJson(jsonDecode(data));

  //print(user);

  

  final mockServices = MockServices.fetchAll();
  return runApp(MaterialApp(home: LocationList(mockServices))); 
}

/* @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
      centerTitle: true,
  ));
}

*/
 */

import 'dart:async';
import 'dart:convert';

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
                  print("button pressed")
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
