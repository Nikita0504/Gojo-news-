import 'package:get/get.dart';
import '../../domain/state/home_screen_controller.dart';

class HomeScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeScreenController>(() => HomeScreenController());
  }
}
