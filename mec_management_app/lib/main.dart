import 'package:flutter/material.dart';
import 'package:mec_management_app/UI/login_page.dart';

<<<<<<< HEAD
void main() => runApp(new MyApp());
=======
void main() => runApp(MaterialApp(
      initialRoute: '/login',
      routes: {
        '/': (context) => Home(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup()
      },
      debugShowCheckedModeBanner: false,
    ));
>>>>>>> 9a12aa4c9b9ef74cad6f52935004cf579747eff4

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Mahindra Ecole Centrale',
      theme: new ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: new LoginPage(),
    );
  }
}
