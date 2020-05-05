

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mec_management_app/services/posts_management.dart';

Posts postObj = new Posts();
QuerySnapshot postData;

void getDocs() {
  postObj.getData().then((results) {
    postData = results;
    addPost();
    print(postData.documents[0].data['title']);
  });
}

class Event {
  final String imagePath,
      title,
      description,
      location,
      duration,
      punchLine1,
      punchLine2;
  final List categoryIds, galleryImages;

  Event(
      {this.imagePath,
      this.title,
      this.description,
      this.location,
      this.duration,
      this.punchLine1,
      this.punchLine2,
      this.categoryIds,
      this.galleryImages});
}

final fiveKmRunEvent = Event(
    imagePath: "assets/event_images/aether.jpg",
    title: "AETHER",
    description: "",
    location: "Mahindra Ecole Centrale",
    duration: "",
    punchLine1: "",
    punchLine2: "The Annual Techno-Cultural-Literary Fest",
    galleryImages: [],
    categoryIds: [0, 1]);

final cookingEvent = Event(
    imagePath: "assets/event_images/granite_cooking_class.jpeg",
    title: "Granite Cooking Class",
    description:
        "Guest list fill up fast so be sure to apply before handto secure a spot.",
    location: "Food Court Avenue",
    duration: "4h",
    punchLine1: "Granite Cooking",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    categoryIds: [
      0,
      2
    ],
    galleryImages: [
      "assets/event_images/cooking_1.jpeg",
      "assets/event_images/cooking_2.jpeg",
      "assets/event_images/cooking_3.jpeg"
    ]);

final musicConcert = Event(
    imagePath: "assets/event_images/music_concert.jpeg",
    title: "Arijit Music Concert",
    description: "Listen to Arijit's latest compositions.",
    location: "D.Y. Patil Stadium, Mumbai",
    duration: "5h",
    punchLine1: "Music Lovers!",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    galleryImages: [
      "assets/event_images/cooking_1.jpeg",
      "assets/event_images/cooking_2.jpeg",
      "assets/event_images/cooking_3.jpeg"
    ],
    categoryIds: [
      0,
      1
    ]);

final golfCompetition = Event(
    imagePath: "assets/event_images/golf_competition.jpeg",
    title: "Season 2 Golf Estate",
    description: "",
    location: "NSIC Ground, Okhla",
    duration: "1d",
    punchLine1: "Golf!",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    galleryImages: [
      "assets/event_images/cooking_1.jpeg",
      "assets/event_images/cooking_2.jpeg",
      "assets/event_images/cooking_3.jpeg"
    ],
    categoryIds: [
      0,
      3
    ]);

final events = [
  fiveKmRunEvent,
  cookingEvent,
  musicConcert,
  golfCompetition,
];

void addPost() {
  if (postData != null) {
    for (int i = 0; i < postData.documents.length; i++) {
      if (!events.contains(Event(title: postData.documents[i].data['title']))) {
        final post = Event(
          imagePath: "assets/event_images/golf_competition.jpeg",
          title: postData.documents[i].data['title'],
          description: postData.documents[i].data['description'],
          location: postData.documents[i].data['location'],
          duration: postData.documents[i].data['duration'],
          punchLine1: postData.documents[i].data['punchline1'],
          punchLine2: postData.documents[i].data['punchline2'],
          galleryImages: [
            "assets/event_images/cooking_1.jpeg",
            "assets/event_images/cooking_2.jpeg",
            "assets/event_images/cooking_3.jpeg"
          ],
          categoryIds: postData.documents[i].data['category'],
        );
        print('added post');
        events.add(post);
      }
    }
  } else {
    print('Empty');
  }
}
