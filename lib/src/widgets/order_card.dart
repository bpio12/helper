import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      children: <Widget>[
        Container(
          height: 70.0,
          width: 70.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/me.jpg"), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(35.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 5.0,
                  offset: Offset(0.0, 5.0))
            ],
          ),
        )
      ],
    ));
  }
}
