import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mec_management_app/UI/homePage/app_state.dart';
import 'package:provider/provider.dart';
import 'homePage/model/category.dart';
import 'homePage/model/event.dart';
import 'homePage/styleguide.dart';
import 'homePage/ui/event_details/event_details_page.dart';
import 'homePage/ui/homepage/category_widget.dart';
import 'homePage/ui/homepage/event_widget.dart';
import 'homePage/ui/homepage/home_page_background.dart';

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
      backgroundColor: Colors.white,
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
                      backgroundImage: AssetImage('assets/img/fall.jpg'),
                      radius: 23,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'John Snow',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900]),
                    )
                  ],
                ),
                SizedBox(height: 70),
                menuButtons(
                    route: '/intro',
                    icon: Icons.label_important,
                    name: 'Introduction'),
                SizedBox(height: 15),
                menuButtons(
                    name: 'Clubs Info',
                    icon: Icons.info_outline,
                    route: '/clubs'),
                SizedBox(height: 15),
                menuButtons(
                    name: 'Time Table',
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
          child: Scaffold(
            body: ChangeNotifierProvider<AppState>(
              create: (_) => AppState(),
              child: Stack(
                children: <Widget>[
                  HomePageBackground(
                    screenHeight: MediaQuery.of(context).size.height,
                  ),
                  SafeArea(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
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
                                Icon(
                                  Icons.person_outline,
                                  color: Color(0x99FFFFFF),
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 32.0),
                            child: Text(
                              "MEC Feed",
                              style: whiteHeadingTextStyle,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24.0),
                            child: Consumer<AppState>(
                              builder: (context, appState, _) =>
                                  SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: <Widget>[
                                    for (final category in categories)
                                      CategoryWidget(category: category)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Consumer<AppState>(
                              builder: (context, appState, _) => Column(
                                children: <Widget>[
                                  for (final event in events.where((e) => e
                                      .categoryIds
                                      .contains(appState.selectedCategoryId)))
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                EventDetailsPage(event: event),
                                          ),
                                        );
                                      },
                                      child: EventWidget(
                                        event: event,
                                      ),
                                    )
                                ],
                              ),
                            ),
                          ),
                        ],
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
}
