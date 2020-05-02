import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<Offset> _slideAnimation;
  Animation<double> _menuScaleAnimation;

  @override
  void initState() {
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
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Stack(
        children: <Widget>[
          menu(context),
          dashBoard(context),
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
                      backgroundImage: AssetImage('assets/fall.jpg'),
                      radius: 23,
                    ),
                    SizedBox(width: 7),
                    Text(
                      'John Snow',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
                SizedBox(height: 70),
                menuButtons(
                    route: '/', icon: Icons.dashboard, name: 'DashBoard'),
                SizedBox(height: 15),
                menuButtons(
                    name: 'Clubs Info',
                    icon: Icons.info_outline,
                    route: '/clubs'),
                SizedBox(height: 15),
                menuButtons(
                    name: 'Time Tabel',
                    icon: Icons.calendar_view_day,
                    route: '/timetable'),
                SizedBox(height: 15),
                menuButtons(
                    name: 'Holidays',
                    icon: Icons.calendar_today,
                    route: '/holidays'),
                SizedBox(height: 15),
                menuButtons(
                    name: 'Faculty', icon: Icons.people, route: '/faculty'),
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
                      color: Colors.white,
                    ),
                    label: Text(
                      'Log Out',
                      style: TextStyle(
                        color: Colors.white,
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

  Widget dashBoard(context) {
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
          elevation: 8,
          color: isCollapsed ? Colors.grey[900] : Colors.white,
          child: Container(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 48,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    InkWell(
                      child: Icon(
                        Icons.menu,
                        color: isCollapsed ? Colors.white : Colors.grey[900],
                      ),
                      onTap: () {
                        setState(() {
                          if (isCollapsed)
                            _controller.forward();
                          else
                            _controller.reverse();

                          isCollapsed = !isCollapsed;
                        });
                      },
                    ),
                    Text(
                      'Mahindra Ecole Centrale',
                      style: TextStyle(
                        fontSize: 24,
                        color: isCollapsed ? Colors.white : Colors.grey[900],
                      ),
                    ),
                    Icon(
                      Icons.settings,
                      color: isCollapsed ? Colors.white : Colors.grey[900],
                    ),
                  ],
                )
              ],
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
          color: Colors.white,
        ),
        label: Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ));
  }
}
