import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojo_news/domain/models/anime.dart';

class AnimeCardMax extends StatelessWidget {
  final Anime anime;
  const AnimeCardMax({
    required this.anime,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        Get.toNamed('/details', arguments: anime);
      },
      child: Container(
        width: size.width,
        margin: EdgeInsets.only(bottom: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 3),
              width: size.width * 0.25,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.network(
                anime.imageURL,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    anime.title,
                    style: Theme.of(context).textTheme.titleMedium,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Text(
                    anime.synopsis,
                    style: Theme.of(context).textTheme.displayMedium,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
