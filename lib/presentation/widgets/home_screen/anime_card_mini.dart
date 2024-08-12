import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojo_news/domain/models/anime.dart';

class AnimeCardMini extends StatelessWidget {
  final Anime anime;
  final bool text;
  const AnimeCardMini({required this.anime, required this.text});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Get.toNamed('/details', arguments: anime);
      },
      child: Container(
        width: size.width * 0.25,
        height: text == true ? size.height * 0.3 : size.height * 0.2,
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              height: size.height * 0.2,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                image: DecorationImage(
                  image: NetworkImage(anime.imageURL),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            text == true
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      anime.title,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
