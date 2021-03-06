import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
          Stack(
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height - 20.0,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFF1b1e44)),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2,
                  child: Container(
                      height: MediaQuery.of(context).size.height / 2 - 20.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.0),
                              topLeft: Radius.circular(40.0)),
                          color: Colors.white))),

              //Content
              Positioned(
                  top: MediaQuery.of(context).size.height / 2 + 25.0,
                  left: 15.0,
                  child: Container(
                      height: (MediaQuery.of(context).size.height / 2) - 50.0,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(children: [
                        SizedBox(height: 10.0),
                        //This is the line
                        Padding(
                          padding: const EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Ingredients',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF726B68)),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                            height: 110.0,
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  buildIngredientItem(
                                      'Choclate',
                                      Icon(Feather.getIconData('droplet'),
                                          size: 10.0, color: Colors.white),
                                      Color(0xFF6FC5DA)),
                                  buildIngredientItem(
                                      'Sugar',
                                      Icon(Feather.getIconData("target"), size: 18.0, color: Colors.white),
                                      Color(0xFF615955)),
                                  buildIngredientItem(
                                      'Toffee Nut Syrup',
                                      Icon(Feather.getIconData("box"), size: 18.0, color: Colors.white),
                                      Color(0xFFF39595)),
                                  buildIngredientItem(
                                      'Nutellaa',
                                      Icon(MaterialCommunityIcons.getIconData("peanut-outline"), size: 18.0, color: Colors.white),
                                      Color(0xFF8FC28A)),
                                  buildIngredientItem(
                                      'Natural Flavors',
                                      Icon(MaterialCommunityIcons.getIconData("leaf-maple"), size: 18.0, color: Colors.white),
                                      Color(0xFF3B8079)),
                                  buildIngredientItem(
                                      'Nuts',
                                      Icon(MaterialCommunityIcons.getIconData("flower-tulip-outline"), size: 18.0, color: Colors.white),
                                      Color(0xFFF8B870)),
                                  SizedBox(width: 25.0)

                                ])),
                        //Line
                        Padding(
                          padding: const EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Nutrition Information',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF726B68)),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                            children: [
                              Text(
                                'Calories',
                                style: TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize: 14.0,
                                    color: Color(0xFFD4D3D2)),
                              ),
                              SizedBox(width: 15.0),
                              Text(
                                '250',
                                style: TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF716966)),
                              ),
                            ]
                        ),
                        SizedBox(height: 10.0),
                        Row(children: <Widget>[
                          Text(
                            'Proteins',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                color: Color(0xFFD4D3D2)),
                          ),
                          SizedBox(width: 15.0),
                          Text(
                            '10g',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF716966)),
                          ),
                        ],),
                        SizedBox(height: 10.0),
                        Row(children: <Widget>[
                          Text(
                            'Caffeine',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                color: Color(0xFFD4D3D2)),
                          ),
                          SizedBox(width: 15.0),
                          Text(
                            '150mg',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF716966)),
                          ),
                        ],),
                        SizedBox(height: 15.0),
                        //Line
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: BorderSide(color: Colors.grey),
                          ),
                          color: Color(0xFF473D3A),
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          padding: EdgeInsets.only(right: 20.0, left: 20.0),
                          child: Container(
                            height: 50.0,
                            child: Center(
                              child: Text(
                                'Make Order',
                                style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(height: 5.0)
                      ]))),
              Positioned(
                  top: MediaQuery.of(context).size.height /10,
                  left: 75.0,
                  child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/img/pinkcup.png'),
                              fit: BoxFit.cover
                          )
                      )
                  )
              ),
              Positioned(
                  top: 25.0,
                  left: 15.0,
                  child: Container(
                      height: 300.0,
                      width: 250.0,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  width: 150.0,
                                  child: Text('DONUTS',
                                      style: TextStyle(
                                          fontFamily: 'varela',
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      )
                                  ),
                                ),
                                SizedBox(width: 15.0),
                                Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20.0),
                                        color: Colors.white
                                    ),
                                    child: Center(
                                        child: Icon(Icons.favorite, size: 18.0, color: Colors.red)
                                    )
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              width: 170.0,
                              child: Text('A doughnut or donut is a type of fried dough confection or dessert food. The doughnut is popular in many countries and is prepared in various forms as a sweet snack',
                                  style: TextStyle(
                                      fontFamily: 'nunito',
                                      fontSize: 13.0,
                                      color: Colors.white
                                  )
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Row(
                                children: [
                                  Container(
                                      height: 60.0,
                                      width: 60.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30.0),
                                        color: Colors.pinkAccent,
                                      ),
                                      child: Center(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text('4.5',
                                                  style: TextStyle(
                                                      fontFamily: 'nunito',
                                                      fontSize: 13.0,
                                                      color: Colors.white
                                                  )
                                              ),
                                              Text('/5',
                                                  style: TextStyle(
                                                    fontFamily: 'nunito',
                                                    fontSize: 13.0,
                                                    color: Colors.white,
                                                  )
                                              ),
                                            ],
                                          )
                                      )
                                  ),
                                  SizedBox(width: 15.0),
                                  Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Stack(
                                            children: [
                                              Container(
                                                  height: 35.0,
                                                  width: 80.0
                                              ),
                                            ]
                                        ),
                                        SizedBox(
                                            height: 3.0
                                        ),
                                      ]
                                  )
                                ]
                            )
                          ]
                      )
                  )
              )
            ],
          )
        ]));
  }

  buildIngredientItem(String name, Icon iconName, Color bgColor) {
    return Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: Column(
            children: [
              Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: bgColor
                  ),
                  child: Center(
                      child: iconName
                  )
              ),
              SizedBox(height: 4.0),
              Container(
                  width: 60.0,
                  child: Center(
                      child: Text(name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 12.0,
                              color: Color(0xFFC2C0C0)
                          )
                      )
                  )
              )
            ]
        )
    );
  }
}
