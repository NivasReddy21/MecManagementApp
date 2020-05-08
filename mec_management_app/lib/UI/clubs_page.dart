import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class ClubsPage extends StatelessWidget {
  static const TextStyle goldcoinGreyStyle = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans");

  static const TextStyle goldCoinGreyStyle = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans");

  static const TextStyle greyStyle =
      TextStyle(fontSize: 40.0, color: Colors.white, fontFamily: "Product Sans");
  static const TextStyle whiteStyle = TextStyle(
      fontSize: 40.0, color: Colors.white, fontFamily: "Product Sans");

  static const TextStyle descriptionWhiteStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );

  static const TextStyle descriptionGreyStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );

  static const TextStyle boldStyle = TextStyle(
    fontSize: 50.0,
    color: Colors.black,
    fontFamily: "Product Sans",
    fontWeight: FontWeight.bold,
  );

  final pages = [
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          colors: [Colors.blue, Colors.red]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "\n"
                  "\n"
                  "ENIGMA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white,letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(""),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "President :",
                  style: greyStyle,
                ),
                Text(
                  "      Rochan Avlur",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "The Computer Science Club\n"
                  "\n"
                  "E-mail: rochan170543@mechyd.ac\n"
                  "\n"
                  "\n"
                  "	Enigma pledges to provide students with an environment and a community that offers resources to explore computer science,\n                   software and technology.\n""The club also helps with networking &\ncareer opportunities to its members.\n",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.purple[800], Colors.red]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "SAE AERO",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 40,color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(""),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Captain :",
                  style: greyStyle,
                ),
                Text(
                  "Rohan Dhansoia",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Mail ID:   rohan170340@mechyd.ac.in"
                  "\n"
                  "\nCorporate Head : Husein Noble"
                  "\nMail ID:    Husein170318@mechyd.ac.in"
                  "\n\nThe SAE-Aero Division aims to\nparticipate in various aeronautical competitions around India.\n             The team handles an in-depth analysis of how a plane is supposed to be made and the engineering sciences that go behind every aspect of the UAV.",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.indigo[800], Colors.indigo[200]]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "SAE BAJA",
                  style: TextStyle(
                    fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(""),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "CAPTAIN :",
                  style: greyStyle,
                ),
                Text(
                  "      Kartik Sunil",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Manufacturing Head- Vedant Sangani (+91-7666935835)"
                  "\n\nThe members of the SAE Baja Club design, innovate, build and race a BAJA off-road buggy every year. This buggy competes in all-India racing events, including the flagship event, BAJA SAE India.\n                Students part of the club devote their time to a bottom-to-top approach to building a vehicle capable of attacking the harshest terrain, and being production ready for the market.",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.deepOrange, Colors.lightGreenAccent]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Entrepreneurship and\n                 Innovation Cell",
                  style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(""),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "President :",
                  style: greyStyle,
                ),
                Text(
                  "Abdul Khaliq",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Email:  khaliq170568@mechyd.ac.in"
                  "\n"
                  "\nThe Entrepreneurship and Innovation Cell strives to nurture the spirit of entrepreneurship by bringing innovative ideas to the forefront of discussions.\n             Events, workshops, industrial visits and seminars are hosted to provide an environment for students where they can develop their entrepreneurial skills.",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end : Alignment.bottomRight,
          colors: [Colors.lightGreen[600], Colors.yellowAccent[400], Colors.orange[800]]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Erudite",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(""),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "HEAD :",
                  style: greyStyle,
                ),
                Text(
                  "Qurram Zaheer",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Email:  zaheer170537@mechyd.ac"
                  "\n"
                  "\nThe goal of The Erudite is to make sure anyone who is interested in literature and/or any form of public speaking has a fun and organised platform to showcase and improve their skills.",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.lightGreenAccent[200], Colors.blue[400], Colors.purple[900]]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "SecretGarden",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 40, color:Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(""),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "HEAD",
                  style: greyStyle,
                ),
                Text(
                  "    Vamsi Varma",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "\nE-mail:  vamsivarma170558@mechyd.ac.in"
                  "\n"
                  "\nThis club aims to pique the interest of students in cybersecurity. We tread on topics related to network, web, system security and security practices to help one grow as a cyber-aware individual.\n                 We do this by looking into code breaking and evaluating defenses to develop the intuition necessary to tackle security challenges.",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.pinkAccent[400], Colors.pink[300]]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "\n"
                  "\n"
                  "Orion",
                  style: TextStyle(
                    fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(""),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "HEAD :",
                  style: greyStyle,
                ),
                Text(
                  "   Rohan Pandey",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Email: rohan170236@mechyd.ac"
                      "\n"
                      "\nOrion provides a platform for students to explore and learn everything about aerospace and astronomy.\n                Workshops and quizzes are organized to teach students about planes while meet-ups are organized to track astronomical events to get students interested in outer space.",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.pinkAccent[400], Colors.pink[300]]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Orion",
                  style: TextStyle(
                    fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(""),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "HEAD :",
                  style: greyStyle,
                ),
                Text(
                  "   Rohan Pandey",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Email: rohan170236@mechyd.ac"
                  "\n"
                  "\nOrion provides a platform for students to explore and learn everything about aerospace and astronomy.\n                Workshops and quizzes are organized to teach students about planes while meet-ups are organized to track astronomical events to get students interested in outer space.",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.pink[100], Colors.pink[300]]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "\n"
                  "Art Felt Club",
                  style: TextStyle(
                    fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(""),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "HEAD :",
                  style: greyStyle,
                ),
                Text(
                  "   Tushara Chada",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Mail ID: poorna18511@mechyd.ac.in"
                      "\n"
                      "\nThe Art Felt Club seeks to guide and support students who wish to pursue art through weekly sessions.  Fests and event decorations are also handled by the Art Felt Club.",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.red[900], Colors.grey[800]]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "\n"
                  "\n"
                      "Dance Club",
                  style: TextStyle(
                    fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(""),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "HEAD :",
                  style: greyStyle,
                ),
                Text(
                  "  Sai Sree Pokala",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Mail ID: saisree170569@mechyd.ac.in"
                      "\n"
                      "\nMEC’s Dance Club intends to encourage students who love to dance while overcoming their fears. It is open to everyone who enjoys dancing regardless of their prior experience.\n      Students will also be encouraged to take part and represent MEC in events/competitions outside.",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.lime[600], Colors.grey[900]]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "\n"
                      "\n"
                      "Media Club",
                  style: TextStyle(
                    fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(""),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "HEAD :",
                  style: greyStyle,
                ),
                Text(
                  "  Abhinav Kolla"
                  "\n  Vedant Sangani",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black, fontSize: 42,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Mail ID			: 	abhinav170113@mechyd.ac.in"
                  "\nMail ID			: 	vedant170359@mechyd.ac.in"
                      "\n"
                      "\nThe aim of The Media Club is to centralise any media related activities for all events happening in MEC. The club focuses on photo/video coverage and trailers for the same.",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.cyan[800], Colors.grey[900]]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "\n"
                      "\n"
                      "Zenith Science Club",
                  style: TextStyle(
                    fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(""),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "HEAD :",
                  style: greyStyle,
                ),
                Text(
                  "Chandrapal Reddy"
                      "\nBharath Reddy",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black, fontSize: 42,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                      "\n"
                      "\n We aim to communicate, to students, teachers and the general public, the wonder and excitement of science and further, to motivate young people towards a deeper engagement with science.\n             As part of the science club, we organize an extensive program reaching out to all levels and ages of science learning.\n      By setting out the power and potential of science to young people, we aim to spark a passion for discovery and inspire a lifelong interest in science.",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LiquidSwipe(
          pages: pages,
          enableLoop: true,
          fullTransitionValue: 300,
          enableSlideIcon: true,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
        ),
      ),
    );
  }
}
