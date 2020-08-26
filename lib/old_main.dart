/* import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'mocks/mock_location.dart';
import 'location_list.dart';
import 'mocks/mock_service.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:crash_course2/display_helpers.dart'; //contains HelperModel

//import 'package:google_sign_in/google_sign_in.dart';

/* //void main() { */
HelperModel helperModel = HelperModel();

@override
Widget build(BuildContext context){
  return ScopedModel<HelperModel>(
    model: helperModel,
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "The Helper App",
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: MainScreen(helperModel: helperModel), 
      //need to write out code  for Main Screen, follow tutorial for Food App. edited at 17:31 video 12
      //stopped watching at 18:45 because irrelevant because haven't coded Main Screen
    )
  );
}
  /* final mockServices = MockServices.fetchAll();
  return runApp(MaterialApp(home: LocationList(mockServices))); */
} */
 