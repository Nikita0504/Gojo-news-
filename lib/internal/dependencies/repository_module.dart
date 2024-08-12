import 'package:gojo_news/internal/dependencies/api_module.dart';

import '../../data/repository/anime_data_repository.dart';

class RepositoryModule {
  static AnimeDataRepository? _animeRepository;
  static AnimeDataRepository animeRepository() {
    _animeRepository ??= AnimeDataRepository(apiUtil: ApiModule.apiUtil());
    return _animeRepository!;
  }
}
