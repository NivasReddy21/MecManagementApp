import 'package:cloud_firestore/cloud_firestore.dart';

class Posts {
  getData() async {
    return await Firestore.instance.collection('/posts').getDocuments();
  }
}
