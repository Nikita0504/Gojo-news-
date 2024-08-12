import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojo_news/domain/state/search_screen_controller.dart';
import 'package:gojo_news/internal/colors.dart';
import 'package:gojo_news/presentation/widgets/anime_card_max.dart';
import '../widgets/search_screen/mode_button.dart';
import '../widgets/search_screen/search_bar_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final SearchScreenController controller = Get.find();
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 18),
              width: size.width * 0.9,
              height: size.height * 0.1,
              child: Row(
                children: [
                  const Flexible(flex: 8, child: SearchBarWidget()),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Flexible(
                    flex: 2,
                    child: ModeButton(
                      mode: controller.mode,
                      onTap: () => controller.onTapModeButton(),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Obx(() {
                if (controller.anime.isEmpty) {
                  return Center(
                      child: CircularProgressIndicator(
                    color: controller.loadingColor.value,
                  ));
                }
                return ListView.builder(
                  itemCount: controller.anime.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: AnimeCardMax(anime: controller.anime[index]),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
