import 'dart:math';
import 'package:flutter/material.dart';

class _FacultyPageState extends State<MathFacultyPage> {
  final _pageController = PageController(
    viewportFraction: 0.3,
  );

  List<FacultyCard> _facultiesCards = [];

  @override
  void initState() {
    super.initState();

    _facultiesCards = [
      FacultyCard(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
        ),
        image: '',
        name: 'SATYANARAYANA CHIRALA',
        number: 'Satyanarayana.Chirala@mechyd.ac.in',
        company: Text(
          'DEPT OF \nMATHS',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
        ),
      ),
      FacultyCard(
        decoration: BoxDecoration(
          color: kRed.withOpacity(0.4),
        ),
        image: '',
        name: 'MAHIPAL JETTA',
        number: 'mahipal.jetta@mechyd.ac.in',
        company: Text(
          'DEPT OF \nMATHS',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
        ),
      ),
      FacultyCard(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [kBlue, kPurple],
            stops: [0.3, 0.95],
          ),
        ),
        image: '',
        name: 'JAI PRAKASH',
        number: 'jai.prakash@mechyd.ac.in',
        company: Text(
          'DEPT OF \nMATHS',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
        ),
      ),
      FacultyCard(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
        ),
        image: '',
        name: 'MANOJ KUMAR YADAV',
        number: 'manojkumar.yadav@mechyd.ac.in',
        company: Text(
          'DEPT OF \nMATHS',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
        ),
      ),
      FacultyCard(
        decoration: BoxDecoration(
          color: kRed.withOpacity(0.4),
        ),
        image: '',
        name: 'RAKHEE BASU',
        number: 'rakhee.basu@mechyd.ac.in',
        company: Text(
          'DEPT OF \nMATHS',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
        ),
      ),
      FacultyCard(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [kBlue, kPurple],
            stops: [0.3, 0.95],
          ),
        ),
        image: '',
        name: 'SANJUKTA DAS',
        number: 'sanjukta.das@mechyd.ac.in',
        company: Text(
          'COMPUTER \nSCIENCE',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView.builder(
          controller: _pageController,
          scrollDirection: Axis.vertical,
          itemCount: _facultiesCards.length,
          itemBuilder: (context, index) => _builder(index),
        ),
      ),
    );
  }

  _builder(int index) {
    FacultyCard _card = _facultiesCards[index];
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1.0;

        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;

          if (value >= 0) {
            double _lowerLimit = 0;
            double _upperLimit = pi / 2;

            value = (_upperLimit - (value.abs() * (_upperLimit - _lowerLimit)))
                .clamp(_lowerLimit, _upperLimit);
            value = _upperLimit - value;
            value *= -1;
          }
        } else {
          if (index == 0) {
            value = 0;
          } else if (index == 1) {
            value = -1;
          }
        }

        return Center(
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateX(value),
            alignment: Alignment.center,
            child: child,
          ),
        );
      },
      child: _card,
    );
  }
}

class MathFacultyPage extends StatefulWidget {
  @override
  _FacultyPageState createState() => _FacultyPageState();
}

class FacultyCard extends StatelessWidget {
  final BoxDecoration decoration;
  final String image;
  final String number;
  final String name;
  final Widget company;

  const FacultyCard({
    this.decoration,
    this.image,
    this.number,
    this.name,
    this.company,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 300,
      height: 225,
      decoration: decoration,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'FACULTY',
            style: TextStyle(
              fontSize: 15,
              shadows: [
                Shadow(
                  color: Colors.blue,
                  blurRadius: 10.0,
                  offset: Offset(5.0,5.0),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: company,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    number,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Image.asset(
                image,
                height: 50,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}

Color kPink = Color(0xFFEE4CBF);
Color kRed = Color(0xFFFA3754);
Color kBlue = Color(0xFF4AA3F2);
Color kPurple = Color(0xFFAF92FB);