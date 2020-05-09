import 'package:flutter/material.dart';
import 'package:mec_management_app/UI/clubs_page.dart';
import 'package:mec_management_app/UI/loadingpage.dart';
import 'package:mec_management_app/UI/login_page.dart';
import 'package:mec_management_app/UI/teachandlearn/mainpage.dart';

import 'UI/CCD/frontpage.dart';
import 'UI/faculty_members/CIVILfaculty.dart';
import 'UI/faculty_members/CSEfaculty.dart';
import 'UI/faculty_members/EEEfaculty.dart';
import 'UI/faculty_members/Humanitiesfaculty.dart';
import 'UI/faculty_members/MECHfaculty.dart';
import 'UI/faculty_members/Mathsfaculty.dart';
import 'UI/faculty_members/Physicsfaculty.dart';
import 'UI/faculty_members/chemistryfaculty.dart';
import 'UI/faculty_members/faculty/branches.dart';
import 'UI/holidays/holidays_listing_screen.dart';
import 'UI/home_page_1.dart';
import 'UI/upload_page.dart';

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
        '/home': (context) => HomePage(),
        '/mainpage': (context) => mainPage(),
        '/frontPage': (context) => frontPage(),
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
        '/phy': (context) => PhysicsFacultyPage(),
        '/loading': (context) => LoadingScreen(),
        '/uploadPage': (context) => ImageCapture()
      },
    );
  }
}
