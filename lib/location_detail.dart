import 'package:flutter/material.dart';
import 'models/location.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(location.name)),
        resizeToAvoidBottomPadding: false,
        body: ListView(
          children: _renderBody(context, location),
        ));
  }

  List<Widget> _renderBody(BuildContext context, Location location) {
    var result = List<Widget>();
    result.add(_bannerImage(location.url, 170.0));
    result.addAll(_renderFacts(context, location));
    return result;
  }

  List<Widget> _renderFacts(BuildContext context, Location location) {
    var result = List<Widget>();
    for (int i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionDescription(location.facts[i].description));
      result.add(_sectionText(location.facts[i].text));
      result.add(_sectionContact(location.facts[i].contact));
      result.add(_buttonTest(location.facts[i].button));
    }
    return result;
  }

  Widget _sectionTitle(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 10.0),
        child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.black,
            )));
  }

  Widget _sectionText(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 10.0), child: Text(text));
  }

  Widget _sectionContact(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 10.0), child: Text(text));
  }

  Widget _buttonTest(FlatButton text) {
    return FlatButton(
      color: Colors.blue,
      textColor: Colors.white,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      padding: EdgeInsets.all(8.0),
      splashColor: Colors.blueAccent,
      onPressed: () {
        print('ordered helper');
      },
      child: Text(
        "Order sitter",
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }

  Widget _sectionDescription(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 10.0),
        child: Text(text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            )));
  }

  Widget _bannerImage(String url, double height) {
    return Container(
        constraints: BoxConstraints.tightFor(height: height),
        child: Image.network(url, fit: BoxFit.fitWidth));
  }
}
