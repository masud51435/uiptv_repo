import 'package:get/get.dart';

import '../feature/home_page/home_page.dart';

class AppRoutes {

  static const HOME = '/';


  static List<GetPage> routes = [
    GetPage(
      name: HOME,
      page: () => const HomePage(),
    ),
  ];
  
}