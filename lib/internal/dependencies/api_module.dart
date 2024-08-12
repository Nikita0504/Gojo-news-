import 'package:gojo_news/data/api/api_util.dart';
import 'package:gojo_news/data/api/services/back4app_sign_in_service.dart';
import 'package:gojo_news/data/api/services/back4app_sign_up_service.dart';
import 'package:gojo_news/data/api/services/search_anime_service.dart';
import 'package:gojo_news/data/api/services/top_anime_list_setvice.dart';
import '../../data/api/services/random_anime_service.dart';
import '../../data/api/services/search_anime_list_service.dart';

class ApiModule {
  static ApiUtil? _apiUtil;

  static ApiUtil apiUtil() {
    _apiUtil ??= ApiUtil(
      randomAnimeService: RandomAnimeService(),
      topAnimeListService: TopAnimeListService(),
      searchAnimeListService: SearchAnimeListService(),
      searchAnimeService: SearchAnimeService(),
      back4appSignUpService: Back4appSignUpService(),
      back4appSignInService: Back4appSignInService(),
    );
    return _apiUtil!;
  }
}
