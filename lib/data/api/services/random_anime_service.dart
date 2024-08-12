import 'package:dio/dio.dart';
import 'package:gojo_news/data/api/model/api_anime.dart';

class RandomAnimeService {
  static const url = 'https://api.jikan.moe/v4/random/anime';

  final Dio dio = Dio();
  Future<ApiAnime> getAnime() async {
    final response = await dio.get(url);
    return ApiAnime.fromApi(response.data['data']);
  }
}
