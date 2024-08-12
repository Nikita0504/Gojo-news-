import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojo_news/presentation/widgets/anime_card_max.dart';
import '../../../domain/models/anime.dart';

class AnimeList extends StatelessWidget {
  const AnimeList({required this.animeList});
  final List<Anime> animeList;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 0, 5, 5),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Anime titles:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Obx(() => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    animeList.length,
                    (index) => AnimeCardMax(
                          anime: animeList[index],
                        )),
              )),
        ],
      ),
    );
  }
}
