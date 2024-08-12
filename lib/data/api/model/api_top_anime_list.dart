class ApiTopAnimeList {
  final List animeList;

  ApiTopAnimeList.fromApi(Map<String, dynamic> map)
      : animeList = map['data'] ?? 'No data';
}
