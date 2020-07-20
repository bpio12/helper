import 'package:flutter/material.dart';
//import 'mocks/mock_location.dart';
import 'location_list.dart';
import 'mocks/mock_service.dart';

void main() {
  //final mockLocations = MockLocations.fetchAll();
  final mockServices = MockServices.fetchAll();
  //return runApp(MaterialApp(home: LocationList(mockLocations)));
  return runApp(MaterialApp(home: LocationList(mockServices)));
}
