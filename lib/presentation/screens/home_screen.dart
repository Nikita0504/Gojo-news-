import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojo_news/presentation/widgets/home_screen/top_anime_titles.dart';
import '../../domain/models/anime.dart';
import '../../domain/state/home_screen_controller.dart';
import '../widgets/home_screen/anime_list.dart';
import '../widgets/home_screen/drawer/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Anime> topAnimeList = Get.arguments['topAnimeList'];
    List<Anime> animeList = Get.arguments['animeList'];
    // ignore: unused_local_variable
    final HomeScreenController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () {
              Get.offNamed('/boot');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () {
              Get.toNamed('/search',
                  arguments: Get.arguments['animeDataRepository']);
            },
          ),
        ],
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Home',
            style: TextStyle(
                fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              TopAnimeTitles(
                topAnimeList: topAnimeList,
              ),
              AnimeList(
                animeList: animeList,
              ),
            ],
          ),
        ),
      ),
      drawer: const DrawerWidget(),
    );
  }
}
