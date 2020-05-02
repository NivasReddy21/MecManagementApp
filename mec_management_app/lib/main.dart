import 'package:flutter/material.dart';
import 'package:mec_management_app/UI/clubs_page.dart';
import 'package:mec_management_app/UI/home_page.dart';
import 'package:mec_management_app/UI/login_page.dart';
import 'package:mec_management_app/UI/profile_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Mahindra Ecole Centrale',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/clubs': (context) => ClubsPage(),
        '/profile': (context) => ProfilePage()
      },
    );
  }
}
