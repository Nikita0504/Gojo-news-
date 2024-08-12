import 'package:dio/dio.dart';
import 'package:gojo_news/data/api/model/api_top_anime_list.dart';

class TopAnimeListService {
  static const url = 'https://api.jikan.moe/v4/top/anime';

  final Dio dio = Dio();
  Future<ApiTopAnimeList> getAnimeList() async {
    final response = await dio.get(url);
    return ApiTopAnimeList.fromApi(response.data);
  }
}
