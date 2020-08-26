import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget {
  final textStyle = TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("What services", style: textStyle),
            Text("are you looking for?", style: textStyle)
          ],
        ),
        Icon(Icons.notifications_none,
            size: 30.0, color: Theme.of(context).primaryColor),
      ],
    );
  }
}
