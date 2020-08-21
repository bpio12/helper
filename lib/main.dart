import 'package:flutter/material.dart';
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
