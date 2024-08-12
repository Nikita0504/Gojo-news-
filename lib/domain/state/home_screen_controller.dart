import 'dart:ui';

import 'package:get/get.dart';
import 'package:gojo_news/data/repository/back4app_data_repository.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class HomeScreenController extends GetxController {
  String? password;
  String? email;
  String? name;
  RxBool drawerMode = false.obs;
  Back4appDataRepository back4appDataRepository =
      Get.arguments['back4appDataRepository'];
  ParseUser? currentUser = Get.arguments['currentUser'];
  void changeMode() {
    drawerMode.value = !drawerMode.value;
  }

  List<String> favourites = [
    'hahah',
  ];
  List<String> inPlans = [];
  Image? profilePicture;
  void signUpOrSignIn() async {
    if (drawerMode.value == false) {
      print('$name/$email/$password/');
      try {
        final data = await back4appDataRepository.signUp(
            password: password, email: email, username: name);

        // Получение обновленного текущего пользователя
        final ParseUser? currentUser =
            await ParseUser.currentUser() as ParseUser?;

        if (currentUser != null) {
          String? userId = currentUser.objectId;

          var parseObject = ParseObject("DataTypes")
            ..set('userId', userId)
            ..set('favourites', favourites)
            ..set('inPlans', inPlans)
            ..set('profilePicture', '');

          final ParseResponse parseResponse = await parseObject.save();
          if (parseResponse.success) {
            var objectId =
                (parseResponse.results!.first as ParseObject).objectId!;
            print(objectId);
          } else {
            print('Error');
          }

          Get.offNamed('/boot');
          print(data);
        } else {
          print('Failed to get current user');
        }
      } catch (e) {
        throw FormatException('The account was not signed up: $e');
      }
    } else {
      try {
        final data = await back4appDataRepository.signIn(
            password: password, username: name);
        Get.offNamed('/boot');
        print(data);
      } catch (e) {
        throw FormatException('The account was not signed in: $e');
      }
    }
  }

  void setValue({String value = '', String? type}) {
    switch (type) {
      case 'password':
        password = value;
      case 'email':
        email = value;
      case 'name':
        name = value;
    }
  }
}
