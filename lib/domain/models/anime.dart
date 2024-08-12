class Anime {
  final int id; //
  final String imageURL;
  final String trailerID;
  final String title;
  final String type; //
  final episodes; //
  final String status; //
  final String rating; //
  final String synopsis;
  final year; //
  final List studios; //
  final List genres; //
  final score;

  Anime({
    required this.id,
    required this.imageURL,
    required this.trailerID,
    required this.title,
    required this.type,
    required this.episodes,
    required this.status,
    required this.rating,
    required this.synopsis,
    required this.year,
    required this.studios,
    required this.genres,
    required this.score,
  });
}
