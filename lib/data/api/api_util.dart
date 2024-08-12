import 'package:gojo_news/data/api/model/api_anime.dart';
import 'package:gojo_news/data/api/services/back4app_sign_in_service.dart';
import 'package:gojo_news/data/api/services/back4app_sign_up_service.dart';
import 'package:gojo_news/data/api/services/random_anime_service.dart';
import 'package:gojo_news/data/api/services/search_anime_service.dart';
import 'package:gojo_news/data/api/services/top_anime_list_setvice.dart';
import 'package:gojo_news/data/mapper/search_anime_list_mapper.dart';
import 'package:gojo_news/data/mapper/top_anime_list_mapper.dart';
import 'package:gojo_news/data/mapper/anime_mapper.dart';
import 'package:gojo_news/domain/models/anime.dart';
import 'package:gojo_news/domain/models/search_anime_list.dart';
import 'package:gojo_news/domain/models/top_anime_list.dart';

import 'services/search_anime_list_service.dart';

class ApiUtil {
  final RandomAnimeService randomAnimeService;
  final TopAnimeListService topAnimeListService;
  final SearchAnimeListService searchAnimeListService;
  final SearchAnimeService searchAnimeService;
  final Back4appSignUpService back4appSignUpService;
  final Back4appSignInService back4appSignInService;

  ApiUtil(
      {required this.randomAnimeService,
      required this.topAnimeListService,
      required this.searchAnimeListService,
      required this.searchAnimeService,
      required this.back4appSignUpService,
      required this.back4appSignInService});

  Future<Anime> getAnime() async {
    final result = await randomAnimeService.getAnime();
    return AnimeMapper.fromApi(result);
  }

  Anime getAnimeFromList(List topAnimeList, int index) {
    return AnimeMapper.fromApi(ApiAnime.fromApi(topAnimeList[index]));
  }

  Future<TopAnimeList> getAnimeList() async {
    final result = await topAnimeListService.getAnimeList();
    return TopAnimeListMapper.fromApi(result);
  }

  Future<SearchAnimeList> getSearchAnimeList(String request) async {
    final result = await searchAnimeListService.getSearchAnime(request);
    return SearchAnimeListMapper.fromApi(result);
  }

  Future<Anime> getSearchAnime(String request) async {
    final result = await searchAnimeService.getSearchAnime(request);
    return AnimeMapper.fromApi(result);
  }

  Future signUp({
    String? username,
    String? password,
    String? email,
  }) async {
    final result = await back4appSignUpService.signUp(
        username: username, password: password, email: email);
    return result;
  }

  Future signIn({
    String? username,
    String? password,
  }) async {
    final result = await back4appSignInService.signIn(
        username: username, password: password);
    return result;
  }
}
