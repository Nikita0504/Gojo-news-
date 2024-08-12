import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojo_news/domain/state/home_screen_controller.dart';
import 'package:gojo_news/internal/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final bool obscureTex;
  final Icon icon;
  final String type;
  const TextFieldWidget({
    required this.hintText,
    required this.obscureTex,
    required this.icon,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    HomeScreenController controller = Get.find();
    return Container(
      height: size.height * 0.07,
      margin: EdgeInsets.all(5),
      child: TextField(
        onChanged: (value) {
          controller.setValue(value: value, type: type);
        },
        style: const TextStyle(color: AppColors.textColor),
        cursorColor: AppColors.textColor,
        decoration: InputDecoration(
          prefixIcon: icon,
          hintStyle: const TextStyle(color: AppColors.textColor),
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.textColor),
            borderRadius: BorderRadius.circular(12),
          ),
          focusColor: AppColors.textColor,
          fillColor: AppColors.searchColor,
          filled: true,
        ),
        obscureText: obscureTex,
      ),
    );
  }
}
