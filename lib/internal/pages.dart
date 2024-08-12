import 'package:get/get_navigation/get_navigation.dart';
import 'package:gojo_news/internal/bindings/home_screen_bindings.dart';
import 'package:gojo_news/internal/bindings/boot_screen_bindings.dart';
import 'package:gojo_news/internal/bindings/search_screen_bindings.dart';
import 'package:gojo_news/presentation/screens/boot_screen.dart';
import 'package:gojo_news/presentation/screens/details_screen.dart';
import '../presentation/screens/home_screen.dart';
import '../presentation/screens/search_screen.dart';
import 'bindings/details_screen_bindings.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/home',
      page: () => const HomeScreen(),
      binding: HomeScreenBindings(),
    ),
    GetPage(
      name: '/boot',
      page: () => const BootSreen(),
      binding: BootScreenBindings(),
    ),
    GetPage(
      name: '/details',
      page: () => const DetailsScreen(),
      binding: DetailsScreenBindings(),
    ),
    GetPage(
      name: '/search',
      page: () => const SearchScreen(),
      binding: SearchScreenBindings(),
    ),
  ];
}
