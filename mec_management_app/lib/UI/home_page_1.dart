import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:mec_management_app/UI/homePage/app_state.dart';
import 'package:mec_management_app/services/userDetails.dart';
import 'package:provider/provider.dart';
import 'homePage/styleguide.dart';
import 'homePage/ui/homepage/home_page_background.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Map postDataObj;
  List postData;

  bool isCollapsed = true;
  double screenWidth, screenHeight;
  Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<Offset> _slideAnimation;
  Animation<double> _menuScaleAnimation;
  String displayUrl;
  Widget userName;

  void getUserNameWidget() async {
    var userNameWidget = await UserDetails().userNameWidget();
    setState(() {
      userName = userNameWidget;
    });
  }

  @override
  void initState() {
    getUserNameWidget();
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.6).animate(_controller);
    _menuScaleAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    postDataObj = ModalRoute.of(context).settings.arguments;
    postData = postDataObj['postData'];
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      body: Stack(
        children: <Widget>[
          menu(context),
          dashBoard(context, postData),
        ],
      ),
    );
  }

  Widget menu(context) {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuScaleAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/img/fall.jpg'),
                      radius: 23,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    userName,
                  ],
                ),
                SizedBox(height: 70),
                menuButtons(
                    route: '/about', icon: Icons.beenhere, name: 'About'),
                SizedBox(height: 15),
                menuButtons(
                    name: 'Clubs Info',
                    icon: Icons.info_outline,
                    route: '/clubs'),
                SizedBox(height: 15),
                menuButtons(
                    name: 'TeachAndLearn',
                    icon: Icons.assignment,
                    route: '/mainpage'),
                SizedBox(height: 15),
                menuButtons(
                    name: 'Holidays',
                    icon: Icons.calendar_today,
                    route: '/holidays'),
                SizedBox(height: 15),
                menuButtons(
                    name: 'Faculty', icon: Icons.people, route: '/faculty'),
                SizedBox(height: 15),
                menuButtons(
                    name: 'CCD', icon: Icons.local_cafe, route: '/frontPage'),
                SizedBox(height: 150),
                FlatButton.icon(
                    onPressed: () {
                      // Navigator.pushNamed(context, '/$route');
                      FirebaseAuth.instance.signOut().then((onValue) {
                        Navigator.popAndPushNamed(context, '/login');
                      }).catchError((e) {
                        print(e);
                      });
                    },
                    icon: Icon(
                      Icons.exit_to_app,
                      size: 22,
                      color: Colors.grey[900],
                    ),
                    label: Text(
                      'Log Out',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 22,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget dashBoard(context, List postData) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.4 * screenWidth,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          animationDuration: duration,
          borderRadius: isCollapsed
              ? BorderRadius.all(Radius.circular(0))
              : BorderRadius.all(Radius.circular(40)),
          child: Scaffold(
            body: ChangeNotifierProvider<AppState>(
              create: (_) => AppState(),
              child: Stack(
                children: <Widget>[
                  HomePageBackground(
                    screenHeight: MediaQuery.of(context).size.height,
                  ),
                  SafeArea(
                    child: LiquidPullToRefresh(
                      onRefresh: handleRefresh,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.menu,
                                      color: Color(0x99FFFFFF),
                                      size: 35,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (isCollapsed)
                                          _controller.forward();
                                        else
                                          _controller.reverse();

                                        isCollapsed = !isCollapsed;
                                      });
                                    },
                                  ),
                                  Spacer(),
                                  Text(
                                    "Mahindra Ecole Centrale",
                                    style: fadedTextStyle,
                                  ),
                                  Spacer(),
                                  IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color: Color(0x99FFFFFF),
                                      size: 40,
                                    ),
                                    onPressed: handelAddPost,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32.0),
                              child: Text(
                                "MEC Feed",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1.0,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                        color: Colors.lightBlue,
                                        blurRadius: 10.0,
                                        offset: Offset(5.0, 5.0)),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Column(
                                  children: postCards(postData),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget menuButtons({String name, IconData icon, String route}) {
    return FlatButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, '$route');
        },
        icon: Icon(
          icon,
          size: 22,
          color: Colors.grey[900],
        ),
        label: Text(
          name,
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 22,
          ),
        ));
  }

  // Widget postList(List postData) {
  //   if (postData != null) {
  //     return ListView.builder(
  //       itemCount: postData.length,
  //       padding: EdgeInsets.all(5),
  //       itemBuilder: (context, i) {
  //         return postCards(postData, i);
  //       },
  //     );
  //   } else {
  //     return Text('Loading....');
  //   }
  // }

  List<Widget> postCards(List postData) {
    List<Widget> cards = [];

    for (int i = 0; i < postData.length; i++) {
      cards.add(Card(
        margin: const EdgeInsets.symmetric(vertical: 20),
        elevation: 10,
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(24))),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  bottom: 8,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Image.network(
                  postData[i]['url'],
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1.0, left: 8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            postData[i]['title'],
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            postData[i]['description'],
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ));
    }
    return cards;
  }

  Future<void> handleRefresh() async {
    Navigator.popAndPushNamed(context, '/loading');
  }

  handelAddPost() {
    Navigator.of(context).pushNamed('/uploadPage');
  }
}
