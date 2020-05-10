import 'package:flutter/material.dart';
import 'package:mec_management_app/UI/CCD/Tea/teapage.dart';
import 'package:mec_management_app/UI/CCD/coffee/coffeepage.dart';
import 'Donuts/donutspage.dart';
import 'Juice/juicepage.dart';
import 'PUFF/puffpage.dart';
import 'Pastry/Pastrypage.dart';

// ignore: camel_case_types
class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  var selectedFood = 'BURGER';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1b1e44),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 400.0,
              ),
              ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset('assets/ccd.png',
                      height: 300.0, fit: BoxFit.cover)),
              RotatedBox(
                quarterTurns: 3,
                child: Text('CCD',
                    style: TextStyle(
                        fontSize: 75,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.3),
                        letterSpacing: 10.0)),
              ),
              Positioned(
                top: 2.0,
                right: 5.0,
                child: Container(
                  height: 12.0,
                  width: 12.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Color(0xFFFD3664)),
                ),
              ),
              Positioned(
                  top: 200.0,
                  left: 40.0,
                  child: Column(
                    children: <Widget>[
                      Text('WELCOME TO',
                          style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 32.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white))
                    ],
                  )),
              Positioned(
                  top: 235.0,
                  left: 40.0,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('Cafe Coffee Day',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 45.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFD3664))),
                          Text(',',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      )
                    ],
                  )),
            ],
          ),
          //Get out of the stack for the options
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            _buildMenuItem('PUFF', Icons.fastfood, PUFF()),
            _buildMenuItem('TEA', Icons.local_drink, TEA()),
            _buildMenuItem('JUICE', Icons.local_drink, JUICE()),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildMenuItem('PASTRY', Icons.cake, PASTRY()),
              _buildMenuItem('COFFEE', Icons.cloud, COFFEE()),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildMenuItem('DONUTS', Icons.donut_small, DONUTS()),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMenuItem(String foodName, iconData, Widget nextPage) {
    return InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          selectMenuOption(foodName, nextPage);
        },
        child: AnimatedContainer(
            curve: Curves.easeIn,
            duration: Duration(milliseconds: 100),
            height: selectedFood == foodName ? 100.0 : 75.0,
            width: selectedFood == foodName ? 100.0 : 75.0,
            color: selectedFood == foodName
                ? Color(0xFFFD3664)
                : Colors.transparent,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                iconData,
                color: selectedFood == foodName ? Colors.white : Colors.grey,
                size: 25.0,
              ),
              SizedBox(height: 12.0),
              Text(foodName,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color:
                          selectedFood == foodName ? Colors.white : Colors.grey,
                      fontSize: 11.0))
            ])));
  }

  selectMenuOption(String foodName, Widget nextPage) {
    setState(() {
      selectedFood = foodName;
    });
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}
