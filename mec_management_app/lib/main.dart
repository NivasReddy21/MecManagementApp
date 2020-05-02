import 'package:flutter/material.dart';
import 'package:mec_management_app/UI/clubs_page.dart';
import 'package:mec_management_app/UI/home_page_1.dart';
import 'package:mec_management_app/UI/login_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mahindra Ecole Centrale',
      theme: new ThemeData(
        primaryColor: Color(0xFFFF4700),
      ),
      initialRoute: '/home',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/clubs': (context) => ClubsPage()
      },
    );
  }
}
