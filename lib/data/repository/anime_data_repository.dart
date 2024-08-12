import 'package:gojo_news/data/api/api_util.dart';
import 'package:gojo_news/domain/models/anime.dart';
import 'package:gojo_news/domain/models/search_anime_list.dart';
import '../../domain/models/top_anime_list.dart';

class AnimeDataRepository {
  final ApiUtil apiUtil;
  AnimeDataRepository({required this.apiUtil});

  Future<Anime> getAnime() {
    return apiUtil.getAnime();
  }

  Future<TopAnimeList> getTopAnimeList() {
    return apiUtil.getAnimeList();
  }

  Anime getAnimeFromList(List topAnimeList, int index) {
    return apiUtil.getAnimeFromList(topAnimeList, index);
  }

  Future<SearchAnimeList> getSearchAnimeList(String request) {
    return apiUtil.getSearchAnimeList(request);
  }

  Future<Anime> getSearchAnime(String request) {
    return apiUtil.getSearchAnime(request);
  }
}
