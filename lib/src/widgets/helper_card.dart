import 'package:flutter/material.dart';

class HelperCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(children: <Widget>[
        Image(
            image: AssetImage("assets/images/baby.jpg"),
            height: 65.0,
            width: 65.0),
        Column(
          children: <Widget>[Text("Babysitters"), Text("43 available")],
        )
      ]),
    );
  }
}
