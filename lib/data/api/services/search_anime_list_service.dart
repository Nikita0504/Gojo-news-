import 'package:dio/dio.dart';
import '../model/api_search_anime_List.dart';

class SearchAnimeListService {
  final Dio dio = Dio();
  Future<ApiSearchAnimeList> getSearchAnime(String request) async {
    final response =
        await dio.get('https://api.jikan.moe/v4/anime?q=$request&sfw');
    return ApiSearchAnimeList.fromApi(response.data);
  }
}
