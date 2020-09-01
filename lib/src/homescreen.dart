import 'widgets/helper_category.dart';
import 'package:flutter/material.dart';
import 'widgets/home_top_info.dart';
import 'widgets/search_field.dart';
import 'widgets/near_helpers.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textStyle = TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
      children: <Widget>[
        HomeTopInfo(),
        HelperCategory(),
        SizedBox(height: 20.0),
        SearchField(),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Helpers Near You",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            GestureDetector(
              onTap: () {},
              child: Text("View All",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent)),
            )
          ],
        ),
        SizedBox(height: 20.0),
        Column(
          children: <Widget>[
            _buildHelpers(),
            _buildHelpers(),
          ],
        ),
      ],
    ));
  }
}

Widget _buildHelpers() {
  return Container(margin: EdgeInsets.only(bottom: 20.0), child: NearHelpers());
}
