import 'package:gojo_news/data/api/model/api_search_anime_List.dart';
import 'package:gojo_news/domain/models/search_anime_list.dart';

class SearchAnimeListMapper {
  static SearchAnimeList fromApi(ApiSearchAnimeList apiSearchAnimeList) {
    return SearchAnimeList(
      searchAnimeList: apiSearchAnimeList.searchAnime,
    );
  }
}
