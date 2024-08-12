import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../domain/state/search_screen_controller.dart';
import '../../../internal/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final SearchScreenController controller = Get.find();
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.06,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.sideColor, width: 2.5),
          color: AppColors.searchColor,
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(5),
              child: TextField(
                onChanged: (value) {
                  controller.request = value.toString();
                },
                cursorColor: AppColors.sideColor,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.sideColor, width: 2.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.sideColor, width: 2.0),
                  ),
                  fillColor: AppColors.searchColor,
                  filled: true,
                  isCollapsed: true,
                ),
                style: const TextStyle(color: AppColors.textColor),
                maxLines: 1,
              ),
            ),
          ),
          IconButton(
              onPressed: () => controller.search(),
              icon: Icon(
                Icons.play_arrow_rounded,
                color: AppColors.textColor,
                size: size.height * 0.04,
              ))
        ],
      ),
    );
  }
}
