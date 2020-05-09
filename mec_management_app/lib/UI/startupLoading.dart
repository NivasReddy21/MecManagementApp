import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mec_management_app/services/posts_management.dart';
import 'package:mec_management_app/services/userDetails.dart';

class StartLoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<StartLoadingScreen> {
  void decide() async {
    bool hasuser = await UserDetails().isLoggedIn();
    if (hasuser) {
      Navigator.of(context).pushReplacementNamed('/loading');
    } else {
      Navigator.of(context).pushReplacementNamed('/login');
    }
  }

  @override
  void initState() {
    super.initState();
    decide();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1b1e44),
        body: Center(
          child: SpinKitThreeBounce(
            color: Colors.white,
            size: 60.0,
          ),
        ));
  }
}
