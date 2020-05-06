class Event {
  final String imagePath, title, description;

  final List categoryIds;

  Event({
    this.imagePath,
    this.title,
    this.description,
    this.categoryIds,
  });
}

final fiveKmRunEvent = Event(
    imagePath: "assets/event_images/aether.jpg",
    title: "AETHER",
    description: "",
    categoryIds: [0, 1]);

final cookingEvent = Event(
  imagePath: "assets/event_images/granite_cooking_class.jpeg",
  title: "Granite Cooking Class",
  description:
      "Guest list fill up fast so be sure to apply before handto secure a spot.",
  categoryIds: [0, 2],
);

final musicConcert = Event(
    imagePath: "assets/event_images/music_concert.jpeg",
    title: "Arijit Music Concert",
    description: "Listen to Arijit's latest compositions.",
    categoryIds: [0, 1]);

final golfCompetition = Event(
    imagePath: "assets/event_images/golf_competition.jpeg",
    title: "Season 2 Golf Estate",
    description: "",
    categoryIds: [0, 3]);

final events = [
  fiveKmRunEvent,
  cookingEvent,
  musicConcert,
  golfCompetition,
];
