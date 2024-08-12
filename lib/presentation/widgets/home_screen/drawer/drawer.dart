import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojo_news/domain/state/home_screen_controller.dart';
import 'package:gojo_news/presentation/widgets/home_screen/drawer/account_drawer.dart';
import 'package:gojo_news/presentation/widgets/home_screen/drawer/signIn.dart';
import 'package:gojo_news/presentation/widgets/home_screen/drawer/signUp.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController controller = Get.find();
    bool accountAvailability = Get.arguments['accountAvailability'];
    return accountAvailability == false
        ? Obx(() =>
            controller.drawerMode == false ? const SignUp() : const SignIn())
        : const AccountDrawer();
  }
}
