import 'package:get/get.dart';
import 'package:gojo_news/data/repository/back4app_data_repository.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import '../../data/repository/anime_data_repository.dart';
import '../models/anime.dart';

class BootScreenController extends GetxController {
  BootScreenController(
      {required this.animeDataRepository,
      required this.back4appDataRepository});
  final AnimeDataRepository animeDataRepository;
  final Back4appDataRepository back4appDataRepository;
  var topAnimeList = <Anime>[].obs;
  var animeList = <Anime>[].obs;
  ParseUser? currentUser;
  bool accountAvailability = false;
  Future<void> getAnime() async {
    Anime? anime;
    for (int i = 0; i < 10;) {
      try {
        final data = await animeDataRepository.getAnime();
        anime = data;
        animeList.add(anime);
        i++;
      } catch (e) {
        print("Error fetching anime data: $e");
      }
    }
    checkLoading(loadingAnime: false);
  }

  Future<void> getTopAnimeList() async {
    Anime? anime;
    try {
      final data = await animeDataRepository.getTopAnimeList();
      for (int i = 0; i < data.animeList.length; i++) {
        anime = animeDataRepository.getAnimeFromList(data.animeList, i);
        topAnimeList.add(anime);
      }
      checkLoading(loadingTopAnimeList: false);
    } catch (e) {
      print("Error fetching anime data: $e");
    }
  }

  void checkLoading(
      {bool loadingAnime = true, bool loadingTopAnimeList = true}) {
    if (loadingAnime & loadingTopAnimeList == false) {
      Get.offNamed('/home', arguments: {
        'topAnimeList': topAnimeList,
        'animeList': animeList,
        'animeDataRepository': animeDataRepository,
        'back4appDataRepository': back4appDataRepository,
        'accountAvailability': accountAvailability,
        'currentUser': currentUser,
      });
    }
  }

  void getAllInformation() async {
    getAnime();
    getTopAnimeList();
    currentUser = await getUser();
    getData();
  }

  Future<ParseUser> getUser() async {
    try {
      ParseUser? user = await ParseUser.currentUser() as ParseUser?;
      accountAvailability = true;
      print(
          '$accountAvailability///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////');
      return user!;
    } catch (e) {
      print(
          '$accountAvailability///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////');
      throw FormatException('The account was not found:  $e');
    }
  }

  void getData() async {
    QueryBuilder<ParseObject> queryUsers =
        QueryBuilder<ParseObject>(ParseObject('DataTypes'))
          ..whereEqualTo('userId', currentUser!.objectId);
    final ParseResponse parseResponse = await queryUsers.query();
    if (parseResponse.success && parseResponse.results != null) {
      final object = (parseResponse.results!.first) as ParseObject;
      print(object['favourites']);
    }
  }

  @override
  void onInit() {
    getAllInformation();
    super.onInit();
  }
}
