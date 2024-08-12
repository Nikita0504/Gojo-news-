import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojo_news/presentation/widgets/home_screen/anime_card_mini.dart';
import '../../../domain/models/anime.dart';

class TopAnimeTitles extends StatelessWidget {
  const TopAnimeTitles({required this.topAnimeList});
  final List<Anime> topAnimeList;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 5),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Top anime titles:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Obx(() => Row(
                  children: List.generate(
                      topAnimeList.length,
                      (index) => AnimeCardMini(
                            anime: topAnimeList[index],
                            text: true,
                          )),
                )),
          )
        ],
      ),
    );
  }
}
