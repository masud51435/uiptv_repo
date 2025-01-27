import 'package:UIPtv/common/section_heading.dart';
import 'package:UIPtv/feature/home_page/widgets/app_search_bar.dart';
import 'package:UIPtv/feature/home_page/widgets/appbar.dart';
import 'package:UIPtv/feature/home_page/widgets/category_section.dart';
import 'package:UIPtv/feature/home_page/widgets/home_promo_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/scrollble_section.dart';
import '../../controller/home_controller/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 80),
            child: Column(
              children: [
                HomeAppBar(),
                SizedBox(height: 20),
                HomeSearchBar(hintText: 'Search'),
                SizedBox(height: 20),
                AppSectionHeading(text: 'Categories'),
                SizedBox(height: 15),
                CategorySection(),
                HomeSlider(),
                SizedBox(height: 15),
                AppSectionHeading(text: 'Trending Movies'),
                SizedBox(height: 15),
                ScrollableSection(
                  items: controller.trendingMovies,
                  onItemTap: (imageUrl) {
                    Get.snackbar("Item Tapped", "You tapped on $imageUrl");
                  },
                ),
                SizedBox(height: 25),
                AppSectionHeading(text: 'Continue Watching'),
                SizedBox(height: 15),
                ScrollableSection(
                  items: controller.continueWatching,
                  onItemTap: (imageUrl) {
                    Get.snackbar("Item Tapped", "You tapped on $imageUrl");
                  },
                  imageWidth: 180,
                  imageHeight: 100,
                ),
                SizedBox(height: 25),
                AppSectionHeading(text: 'Recommended For You'),
                SizedBox(height: 15),
                ScrollableSection(
                  items: controller.recommendedForYou,
                  onItemTap: (imageUrl) {
                    Get.snackbar("Item Tapped", "You tapped on $imageUrl");
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
