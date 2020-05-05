import 'package:flutter/material.dart';
import 'package:mec_management_app/UI/CIVILfaculty.dart';
import 'package:mec_management_app/UI/CSEfaculty.dart';
import 'package:mec_management_app/UI/EEEfaculty.dart';
import 'package:mec_management_app/UI/Humanitiesfaculty.dart';
import 'package:mec_management_app/UI/MECHfaculty.dart';
import 'package:mec_management_app/UI/Mathsfaculty.dart';
import 'package:mec_management_app/UI/Physicsfaculty.dart';
import 'package:mec_management_app/UI/clubs_page.dart';
import 'package:mec_management_app/UI/faculty/branches.dart';
import 'package:mec_management_app/UI/home_page_1.dart';
import 'package:mec_management_app/UI/login_page.dart';

import 'UI/chemistryfaculty.dart';
import 'UI/holidays/holidays_listing_screen.dart';
import 'UI/aboutpage.dart';
import 'package:mec_management_app/UI/frenchfaculty.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mahindra Ecole Centrale',
      theme: new ThemeData(
        primaryColor: Color(0xFFFF4700),
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/about': (context) => aboutPage(),
        '/home': (context) => HomePage(),
        '/clubs': (context) => ClubsPage(),
        '/holidays': (context) => HolidaysListingScreen(),
        '/faculty': (context) => Branches(),
        '/cse': (context) => CSEFacultyPage(),
        '/chemistry': (context) => chemistryFacultyPage(),
        '/civil': (context) => civilFacultyPage(),
        '/eee': (context) => EEEFacultyPage(),
        '/humanities': (context) => humanitiesFacultyPage(),
        '/math': (context) => MathFacultyPage(),
        '/mech': (context) => MechFacultyPage(),
        '/phy' : (context) => PhysicsFacultyPage(),
      },
    );
  }
}
