import 'package:dio/dio.dart';
import 'package:gojo_news/data/api/model/api_anime.dart';

class SearchAnimeService {
  final Dio dio = Dio();
  Future<ApiAnime> getSearchAnime(String request) async {
    final response =
        await dio.get('https://api.jikan.moe/v4/anime/$request/full');
    return ApiAnime.fromApi(response.data['data']);
  }
}
