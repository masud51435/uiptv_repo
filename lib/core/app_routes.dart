import 'package:get/get.dart';

import '../feature/bottom_nav_bar/persistent_bottom_navbar.dart';
import '../feature/home_page/home_page.dart';

class AppRoutes {
  static const BOTTOMNAVBAR = '/';
  static const HOME = '/home';

  static List<GetPage> routes = [
    GetPage(
      name: BOTTOMNAVBAR,
      page: () => const PbottomNavbar(),
    ),
    GetPage(
      name: HOME,
      page: () => const HomePage(),
    ),
  ];
}
