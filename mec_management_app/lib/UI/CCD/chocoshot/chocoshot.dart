import 'package:mec_management_app/UI/CCD/chocoshot/detailspage.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class CHOCOSHOT extends StatefulWidget {
  @override
  _CHOCOSHOTPageState createState() => _CHOCOSHOTPageState();
}

class _CHOCOSHOTPageState extends State<CHOCOSHOT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          padding: EdgeInsets.only(left: 15.0),
          children: <Widget>[
            SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Welcome, Anurag',
                    style: TextStyle(
                        fontFamily: 'varela',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF473D3A))),
                Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              image: AssetImage('assets/img/model.jpg'),
                              fit: BoxFit.cover)),
                    ))
              ],
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(right: 45.0),
              child: Container(
                child: Text(
                  'Let\'s select the best taste for your next drinks break!',
                  style: TextStyle(
                      fontFamily: 'nunito',
                      fontSize: 17.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black54),
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Taste of the week',
                  style: TextStyle(
                      fontFamily: 'varela',
                      fontSize: 20.0,
                      color: Color(0xFF473D3A)),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Container(
                height: 410.0,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  _coffeeListCard(
                      'assets/img/orange.png',
                      'Orange-Juice',
                      'CCD',
                      'Our freshly made orange juice',
                      '30/-',
                      false),
                ])),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Different Types Of Juices',
                  style: TextStyle(
                      fontFamily: 'varela',
                      fontSize: 17.0,
                      color: Color(0xFF473D3A)),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Container(
                height: 125.0,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  _buildImage('assets/img/coffee.jpg'),
                  _buildImage('assets/img/coffee2.jpg'),
                  _buildImage('assets/img/coffee3.jpg')
                ])),
            SizedBox(height: 20.0)
          ],
        ));
  }

  _buildImage(String imgPath) {
    return Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Container(
            height: 100.0,
            width: 175.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage(imgPath), fit: BoxFit.cover))));
  }

  _coffeeListCard(String imgPath, String coffeeName, String shopName,
      String description, String price, bool isFavorite) {
    return Padding(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        child: Container(
            height: 300.0,
            width: 225.0,
            child: Column(
              children: <Widget>[
                Stack(children: [
                  Container(height: 335.0),
                  Positioned(
                      top: 75.0,
                      child: Container(
                          padding: EdgeInsets.only(left: 10.0, right: 20.0),
                          height: 260.0,
                          width: 225.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Color(0xFF1b1e44)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 60.0,
                                ),
                                Text(
                                  shopName + '\'s',
                                  style: TextStyle(
                                      fontFamily: 'nunito',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  coffeeName,
                                  style: TextStyle(
                                      fontFamily: 'varela',
                                      fontSize: 32.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  description,
                                  style: TextStyle(
                                      fontFamily: 'nunito',
                                      fontSize: 14.0,
                                      // fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 10.0),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      price,
                                      style: TextStyle(
                                          fontFamily: 'varela',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFD3664)),
                                    ),
                                    Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20.0),
                                            color: Colors.white),
                                        child: Center(
                                            child: Icon(Icons.favorite,
                                                color: isFavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                                size: 15.0)))
                                  ],
                                )
                              ]))),
                  Positioned(
                      left: 60.0,
                      top: 25.0,
                      child: Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain))))
                ]),
                SizedBox(height: 20.0),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailsPage()));
                    },
                    child: Container(
                        height: 50.0,
                        width: 225.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Color(0xFFFD3664)),
                        child: Center(
                            child: Text('Order Now',
                                style: TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)))))
              ],
            )));
  }
}
