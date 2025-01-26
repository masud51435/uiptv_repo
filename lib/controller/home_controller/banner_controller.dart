import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BannerController extends GetxController {
  static BannerController get instance => Get.find();

  RxBool bannerLoading = false.obs;
  RxList allBanner = [
    "https://wallpapercave.com/wp/wp1934740.jpg",
    "https://wallpapercave.com/wp/wp1934753.jpg",
    "https://wallpapercave.com/wp/wp1934761.jpg",
  ].obs;

  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;
}
