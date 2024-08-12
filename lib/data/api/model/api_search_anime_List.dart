class ApiSearchAnimeList {
  final List searchAnime;

  ApiSearchAnimeList.fromApi(Map<String, dynamic> map)
      : searchAnime = map['data'] ?? 'No data';
}
