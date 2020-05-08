import 'dart:math';
import 'package:flutter/material.dart';

class _FacultyPageState extends State<PhysicsFacultyPage> {
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
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue, Colors.red]
      )),
        image: '',
        name: 'BISHNU P PAL',
        number: 'bishnu.pal@mechyd.ac.in',
        company: Text(
          'DEPT OF \nPHYSICS',
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
           begin: Alignment.topLeft,
           end: Alignment.bottomRight,
           colors: [Colors.purple[800], Colors.red]
    )),
        image: '',
        name: 'DIKBAKAR ROY CHOWDHURY',
        number: 'dibakar.roychowdhury@mechyd.ac.in',
        company: Text(
          'DEPT OF \nPHYSICS',
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
          ),
        ),
        image: '',
        name: 'JAYASRI D',
        number: 'jayasri.d@mechyd.ac.in',
        company: Text(
          'DEPT OF \nPHYSICS',
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
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.indigo[800], Colors.indigo[200]]
      )),
        image: '',
        name: 'MURTAZA BOHRA',
        number: 'murtaza.bohra@mechyd.ac.in',
        company: Text(
          'DEPT OF \nPHYSICS',
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
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.deepOrange, Colors.lightGreenAccent]
    )),
        image: '',
        name: 'NAGA DEEPTHI KUCHIBHATLA',
        number: 'nagadeepthi.kuchibhatla@mechyd.ac.in',
        company: Text(
          'DEPT OF \nPHYSICS',
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MEC FACULTY',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.0,
          ),
        ),
        backgroundColor: Color(0XFF1b1e44),
        toolbarOpacity: 0,
      ),
      backgroundColor: Colors.deepOrange[100],
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

class PhysicsFacultyPage extends StatefulWidget {
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
              color: Colors.white,
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