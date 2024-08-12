import 'package:gojo_news/data/api/model/api_anime.dart';
import '../../domain/models/anime.dart';

class AnimeMapper {
  static Anime fromApi(ApiAnime anime) {
    return Anime(
        id: anime.id,
        imageURL: anime.imageURL,
        trailerID: anime.trailerID,
        title: anime.title,
        type: anime.type,
        episodes: anime.episodes,
        status: anime.status,
        rating: anime.rating,
        synopsis: anime.synopsis,
        year: anime.year,
        studios: anime.studios,
        genres: anime.genres,
        score: anime.score);
  }
}
