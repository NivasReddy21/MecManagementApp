import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello from home page'),
      ),
      body: Center(
        child: Container(
          child: FlatButton(
            child: Text('Log Out'),
            onPressed: () {
              FirebaseAuth.instance.signOut().then((value) {
                Navigator.of(context).popAndPushNamed('login');
              }).catchError((e) {
                print(e);
              });
            },
          ),
        ),
      ),
    );
  }
}
