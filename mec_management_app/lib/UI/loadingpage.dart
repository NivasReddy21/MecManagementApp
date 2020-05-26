import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mec_management_app/services/posts_management.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getPosts() async {
    PostManagement instance = new PostManagement();
    await instance.getPostData();
    print(instance.postData);
    Navigator.pushReplacementNamed(context, '/home',
        arguments: {'postData': instance.postData});
  }

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Center(
          child: SpinKitThreeBounce(
            color: Colors.white,
            size: 60.0,
          ),
        ));
  }
}
