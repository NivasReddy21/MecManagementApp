import 'package:flutter/material.dart';

class Character {
  final String name;
  final String imagePath;
  final String description;
  final List<Color> colors;

  Character({this.name, this.imagePath, this.description, this.colors});
}

List characters = [
  Character(
      name: "Spring",
      imagePath: "assets/img/Kevin_minions.png",
      description:
      "February 21st --> Maha Shivratri\n"
          "March 10th --> Holi\n"
          "March 25th --> Ugadi",
      colors: [Colors.pink.shade200, Colors.redAccent.shade400]
  ),
  Character(
      name: "Summer",
      imagePath: "assets/img/Agnes_gru.png",
      description:
      "April 2nd --> Ram Navami\n"
          "April 6th --> Mahavir Jayanthi\n"
          "April 10th --> Good Friday\n"
          "May 1st --> Labour Day\n"
          "May 7th --> Buddha Purnima\n"
          "May 25th --> Eid-Ul-Fitar",
      colors: [Colors.redAccent[100], Colors.red[400]]
  ),
  Character(
      name: "Rainy",
      imagePath: "assets/img/Kevin_minions.png",
      description:
      "August 1st --> Bakrid\n"
          "August 3rd --> RakshaBandhan\n"
          "August 12th --> Janmashtami\n"
          "August 15th --> Independence Day\n"
          "August 22nd --> Vinayaka Chaturthi\n"
          "August 30th --> Muharram",
      colors: [Colors.green[200], Colors.green[800]]
  ),
  Character(
      name: "Winter",
      imagePath: "assets/img/Agnes_gru.png",
      description:
      "October 2nd --> GandhiJayanthi\n"
          "October 25th --> Dussehra\n"
          "November 14th --> Deepavali\n"
          "November 30th --> GuruNanak Jayanthi\n"
          "December 25th --> Christmas",
      colors: [Colors.lightBlue[200], Colors.lightBlue[800]]
  ),
];