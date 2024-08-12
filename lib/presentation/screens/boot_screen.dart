import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojo_news/domain/state/boot_screen_controller.dart';
import 'package:gojo_news/internal/colors.dart';

class BootSreen extends StatelessWidget {
  const BootSreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final BootScreenController controller = Get.find();
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
          child:
              CircularProgressIndicator(color: Theme.of(context).primaryColor)),
    );
  }
}
