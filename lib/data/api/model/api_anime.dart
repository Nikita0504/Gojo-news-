class ApiAnime {
  final int id;
  final String imageURL;
  final String trailerID;
  final String title;
  final String type;
  final episodes;
  final String status;
  final String rating;
  final String synopsis;
  final year;
  final List studios;
  final List genres;
  final score;

  ApiAnime.fromApi(Map<String, dynamic> map)
      : id = map['mal_id'] ?? 'No data',
        imageURL = map['images']['jpg']['image_url'] ?? 'No data',
        trailerID = map['trailer']['youtube_id'] ?? 'No data',
        title = map['title'] ?? 'No data',
        type = map['type'] ?? 'No data',
        episodes = map['episodes'] ?? 'No data',
        status = map['status'] ?? 'No data',
        rating = map['rating'] ?? 'No data',
        synopsis = map['synopsis'] ?? 'No data',
        year = map['year'] ?? 'No data',
        studios = map['studios'] ?? 'No data',
        genres = map['genres'] ?? 'No data',
        score = map['score'] ?? 'No data';
}
