import 'package:gojo_news/data/api/model/api_top_anime_list.dart';
import '../../domain/models/top_anime_list.dart';

class TopAnimeListMapper {
  static TopAnimeList fromApi(ApiTopAnimeList animeList) {
    return TopAnimeList(
      animeList: animeList.animeList,
    );
  }
}
