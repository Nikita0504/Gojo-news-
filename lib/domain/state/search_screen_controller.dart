import 'dart:ui';

import 'package:get/get.dart';
import 'package:gojo_news/internal/colors.dart';
import '../../data/repository/anime_data_repository.dart';
import '../models/anime.dart';

class SearchScreenController extends GetxController {
  String? request;
  RxBool mode = false.obs;
  AnimeDataRepository animeDataRepository = Get.arguments;
  RxList anime = <Anime>[].obs;
  Rx<Color> loadingColor = AppColors.backgroundColor.obs;

  Future<void> search() async {
    anime.clear();
    loadingColor = AppColors.textColor.obs;
    if (mode == false) {
      anime.add(await animeDataRepository.getSearchAnime(request!));
    } else {
      final data = await animeDataRepository.getSearchAnimeList(request!);
      for (int i = 0; i < data.searchAnimeList.length; i++) {
        anime
            .add(animeDataRepository.getAnimeFromList(data.searchAnimeList, i));
      }
    }
  }

  void onTapModeButton({request = ''}) {
    mode.value = !mode.value;
  }
}
