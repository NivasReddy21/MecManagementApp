import 'package:flutter/material.dart';
import 'package:mec_management_app/pages/login.dart';
import 'package:mec_management_app/pages/signup.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup()
      },
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(),
      appBar: AppBar(
        title: Text('MEC'),
        centerTitle: true,
      ),
    );
  }
}
