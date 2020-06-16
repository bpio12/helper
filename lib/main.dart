import 'package:flutter/material.dart';
import 'mocks/mock_location.dart';
import 'location_list.dart';
void main() {
  final mockLocations = MockLocations.fetchAll();

  return runApp(MaterialApp(home: LocationList(mockLocations)));
}

