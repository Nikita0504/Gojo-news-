import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojo_news/domain/state/details_screen_controller.dart';
import 'package:gojo_news/internal/colors.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import '../../domain/models/anime.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DetailsScreenController controller = Get.find();
    Anime anime = Get.arguments;
    Size size = MediaQuery.of(context).size;
    TextStyle? textStyle = Theme.of(context).textTheme.displaySmall;
    List ganres = [];
    List studios = [];
    for (int i = 0; i < anime.genres.length; i++) {
      ganres.add(anime.genres[i]['name']);
    }
    for (int i = 0; i < anime.studios.length; i++) {
      studios.add(anime.studios[i]['name']);
    }
    print(anime.score);
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      height: size.height * 0.35,
                      width: size.width * 0.45,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        image: DecorationImage(
                          image: NetworkImage(anime.imageURL),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            anime.title,
                            style: Theme.of(context).textTheme.titleLarge,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                          ),
                          Text(
                            'Synopsis: ${anime.synopsis}',
                            style: Theme.of(context).textTheme.displayMedium,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 10,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  width: size.width * 0.95,
                  height: size.height * 0.005,
                  decoration: const BoxDecoration(
                      color: AppColors.sideColor,
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ganres: ${ganres.join(', ')}',
                            style: textStyle,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          Text(
                            'Id: ${anime.id}',
                            style: textStyle,
                          ),
                          Text(
                            'Type: ${anime.type}',
                            style: textStyle,
                          ),
                          Text(
                            'Episodes: ${anime.episodes}',
                            style: textStyle,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Status: ${anime.status}',
                            style: textStyle,
                          ),
                          Text(
                            'Rating: ${anime.rating}',
                            style: textStyle,
                          ),
                          Text(
                            'Year: ${anime.year}',
                            style: textStyle,
                          ),
                          Text(
                            'Studios: ${studios.join(', ')}',
                            style: textStyle,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  width: size.width * 0.95,
                  height: size.height * 0.005,
                  decoration: const BoxDecoration(
                      color: AppColors.sideColor,
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
              SizedBox(
                width: size.width,
                height: size.height * 0.2725,
                child: YoutubePlayer(
                  controller: controller.controller,
                  aspectRatio: 16 / 9,
                ),
              )
            ],
          ),
        ));
  }
}
