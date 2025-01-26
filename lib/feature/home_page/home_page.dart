import 'package:UIPtv/common/section_heading.dart';
import 'package:UIPtv/feature/home_page/widgets/app_search_bar.dart';
import 'package:UIPtv/feature/home_page/widgets/appbar.dart';
import 'package:UIPtv/feature/home_page/widgets/category_section.dart';
import 'package:UIPtv/feature/home_page/widgets/home_promo_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                AppSectionHeading(text: 'Trending Movies'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
