import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

class UserManagement {
  storeNewUser(user, context) {
    print(user.displayName);
    Firestore.instance.collection('/users').add({
      'email': user.email,
      'uid': user.uid,
      'userName': user.displayName
    }).then((value) {
      Navigator.popAndPushNamed(context, '/home');
    }).catchError((e) {
      print(e);
    });
  }
}
