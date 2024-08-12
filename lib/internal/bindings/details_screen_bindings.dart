import 'package:get/get.dart';
import 'package:gojo_news/domain/state/details_screen_controller.dart';

class DetailsScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsScreenController>(() => DetailsScreenController());
  }
}
