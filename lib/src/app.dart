import 'package:flutter/material.dart';
import 'homescreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Helper: Find the care you need",
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: HomeScreen(),
    );
  }
}
