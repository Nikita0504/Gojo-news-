import 'package:get/get.dart';
import 'package:gojo_news/data/api/services/back4app_sign_in_service.dart';
import 'package:gojo_news/data/api/services/back4app_sign_up_service.dart';
import 'package:gojo_news/data/api/services/search_anime_service.dart';
import 'package:gojo_news/data/api/services/top_anime_list_setvice.dart';
import 'package:gojo_news/data/repository/back4app_data_repository.dart';
import '../../data/api/api_util.dart';
import '../../data/api/services/random_anime_service.dart';
import '../../data/api/services/search_anime_list_service.dart';
import '../../data/repository/anime_data_repository.dart';
import '../../domain/state/boot_screen_controller.dart';

class BootScreenBindings extends Bindings {
  ApiUtil apiUtil = ApiUtil(
      randomAnimeService: RandomAnimeService(),
      topAnimeListService: TopAnimeListService(),
      searchAnimeListService: SearchAnimeListService(),
      searchAnimeService: SearchAnimeService(),
      back4appSignUpService: Back4appSignUpService(),
      back4appSignInService: Back4appSignInService());

  @override
  void dependencies() {
    Get.lazyPut<BootScreenController>(() => BootScreenController(
        animeDataRepository: AnimeDataRepository(apiUtil: apiUtil),
        back4appDataRepository: Back4appDataRepository(apiUtil: apiUtil)));
  }
}
