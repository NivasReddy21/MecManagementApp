import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  Category({this.categoryId, this.name, this.icon});
}

final allCategory = Category(
  categoryId: 0,
  name: "All",
  icon: Icons.search,
);

final musicCategory = Category(
  categoryId: 1,
  name: "Exams",
  icon: Icons.content_paste,
);

final meetUpCategory = Category(
  categoryId: 2,
  name: "Events",
  icon: Icons.event,
);

final golfCategory = Category(
  categoryId: 3,
  name: "Sports",
  icon: Icons.golf_course,
);

final birthdayCategory = Category(
  categoryId: 4,
  name: "Birthday's",
  icon: Icons.cake,
);

final club = Category(
  categoryId: 5,
  name: "Clubs",
  icon: Icons.group_work,
);

final categories = [
  allCategory,
  musicCategory,
  meetUpCategory,
  golfCategory,
  birthdayCategory,
  club
];
