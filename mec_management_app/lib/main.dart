import 'package:flutter/material.dart';
import 'package:mec_management_app/UI/aboutpage.dart';
import 'package:mec_management_app/UI/clubs_page.dart';
import 'package:mec_management_app/UI/loadingpage.dart';
import 'package:mec_management_app/UI/login_page.dart';
import 'package:mec_management_app/UI/splashscreen.dart';
import 'package:mec_management_app/UI/teachandlearn/mainpage.dart';
import 'package:mec_management_app/UI/CCD/frontpage.dart';
import 'package:mec_management_app/UI/faculty_members/CIVILfaculty.dart';
import 'package:mec_management_app/UI/faculty_members/CSEfaculty.dart';
import 'package:mec_management_app/UI/faculty_members/EEEfaculty.dart';
import 'package:mec_management_app/UI/faculty_members/Humanitiesfaculty.dart';
import 'package:mec_management_app/UI/faculty_members/MECHfaculty.dart';
import 'package:mec_management_app/UI/faculty_members/Mathsfaculty.dart';
import 'package:mec_management_app/UI/faculty_members/Physicsfaculty.dart';
import 'package:mec_management_app/UI/faculty_members/chemistryfaculty.dart';
import 'package:mec_management_app/UI/faculty_members/faculty/branches.dart';
import 'package:mec_management_app/UI/holidays/holidays_listing_screen.dart';
import 'package:mec_management_app/UI/home_page_1.dart';
import 'package:mec_management_app/UI/upload_page.dart';

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
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/about': (context) => aboutPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/mainpage': (context) => MainPage(),
        '/frontPage': (context) => FrontPage(),
        '/clubs': (context) => ClubsPage(),
        '/holidays': (context) => HolidaysListingScreen(),
        '/faculty': (context) => Branches(),
        '/cse': (context) => CSEFacultyPage(),
        '/chemistry': (context) => ChemistryFacultyPage(),
        '/civil': (context) => CivilFacultyPage(),
        '/eee': (context) => EEEFacultyPage(),
        '/humanities': (context) => HumanitiesFacultyPage(),
        '/math': (context) => MathFacultyPage(),
        '/mech': (context) => MechFacultyPage(),
        '/phy': (context) => PhysicsFacultyPage(),
        '/loading': (context) => LoadingScreen(),
        '/uploadPage': (context) => ImageCapture()
      },
    );
  }
}
