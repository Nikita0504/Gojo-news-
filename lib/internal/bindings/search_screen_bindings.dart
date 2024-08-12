import 'package:get/get.dart';
import '../../domain/state/search_screen_controller.dart';

class SearchScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchScreenController>(() => SearchScreenController());
  }
}
