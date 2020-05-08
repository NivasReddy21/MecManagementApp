import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserDetails {
  String userName;
  String userProfilePic;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<bool> isLoggedIn() async {
    var user = await _firebaseAuth.currentUser();
    return user != null;
  }

  Future<Widget> userNameWidget() async {
    var _user = await _firebaseAuth.currentUser();
    var _userName = _user.displayName;
    if (_user != null) {
      return Text(
        _userName,
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      );
    } else {
      return Text('Loading',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ));
    }
  }
}
