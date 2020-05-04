import 'package:flutter/material.dart';
import 'components/ListViewEffect.dart';

class Branches extends StatefulWidget {
  _Branches createState() => new _Branches();
}

class _Branches extends State<Branches> {
  List<String> _list = [
    'Computer Science',
    "Mechanical",
    "Electrical",
    "Civil",
    "Humanities",
    "French"
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
                    children:
                        _list.map((s) => _buildWidgetExample(s)).toList()))));
  }

  Widget _buildWidgetExample(String text) {
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
      onTap: () {},
    );
  }
}
