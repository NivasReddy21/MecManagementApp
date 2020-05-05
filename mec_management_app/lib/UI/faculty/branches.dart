import 'package:flutter/material.dart';
import 'components/ListViewEffect.dart';

class Branches extends StatefulWidget {
  _Branches createState() => new _Branches();
}

class _Branches extends State<Branches> {
  List<List<String>> _list = [
    ['Computer Science', '/cse'],
    ["Mechanical", '/mech'],
    ["Electrical", '/eee'],
    ["Civil", '/civil'],
    ["Humanities", '/humanities'],
    ["Maths", '/math'],
    ["Physics", '/phy'],
    ["Chemistry", '/chemistry']
  ].toList();
  Duration _duration = Duration(milliseconds: 300);

  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
            child: new Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height,
                child: new ListViewEffect(
                    duration: _duration,
                    children: _list
                        .map((s) => _buildWidgetExample(s[0], s[1]))
                        .toList()))));
  }

  Widget _buildWidgetExample(String text, String route) {
    return InkWell(
      child: new Container(
        decoration: BoxDecoration(
            color: Color(0xFF1b1e44),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: new Center(
          child: new Text(
            text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      onTap: () {
        Navigator.pushReplacementNamed(context, route);
      },
    );
  }
}
