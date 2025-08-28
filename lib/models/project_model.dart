class Project {
  final String title;
  final String description;
  final String image;

  Project(this.title, this.description, this.image);

  static List<Project> projects = [
    Project(
      "Movie App",
      "Used components of Javascript to implement basic data structures through the game of Battleship.",
      "assets/images/movies-shot.png",
    ),
    Project(
      "EchoMed App",
      "Uses a public movie API to build a collection movie list.",
      "assets/images/echomed-app-shot_new.png",
    ),
    Project(
      "GPT3 Next Model App",
      "Simple arithmetic calculator using Javascript.",
      "assets/images/gpt3-shot.png",
    ),
    Project(
      "Rems School App",
      "Created a SaaS landing page using HTML and CSS.",
      "assets/images/remschool.png",
    ),
  ];
}
