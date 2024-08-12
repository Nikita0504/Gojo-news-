import 'package:get/get.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../models/anime.dart';

class DetailsScreenController extends GetxController {
  final controller = YoutubePlayerController();
  Anime anime = Get.arguments;

  @override
  void onInit() {
    controller.loadVideoById(videoId: anime.trailerID);
    super.onInit();
  }
}
