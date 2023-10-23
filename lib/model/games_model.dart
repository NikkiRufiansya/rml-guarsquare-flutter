// game_model.dart

class Game {
  final String title;
  final String genre;
  final String imageUrl;
  final String description;

  Game({
    required this.title,
    required this.genre,
    required this.imageUrl,
    required this.description,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      title: json["title"],
      genre: json["genre"],
      imageUrl: json["images"],
      description: json["description"],
    );
  }
}
