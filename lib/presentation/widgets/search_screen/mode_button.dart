import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../internal/colors.dart';

class ModeButton extends StatelessWidget {
  final RxBool mode;
  final onTap;
  const ModeButton({required this.mode, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Ink(
        width: size.width * 0.2,
        height: size.height * 0.06,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.sideColor, width: 2.5),
            color: AppColors.searchColor,
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: Center(
            child: Obx(
          () => Text(
            mode == true ? 'Name' : "Id",
            style: const TextStyle(color: AppColors.textColor),
          ),
        )),
      ),
    );
  }
}
