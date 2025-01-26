import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../../controller/home_controller/banner_controller.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final BannerController controller = Get.put(BannerController());

    return Obx(() {
      return CarouselSlider(
        items: controller.allBanner
            .map(
              (banner) => Center(
                child: SizedBox(
                  height: 160,
                  width: double.infinity,
                 
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: CachedNetworkImage(
                      imageUrl: banner,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Shimmer.fromColors(
                        baseColor: Colors.grey[200]!,
                        highlightColor: Colors.grey[100]!,
                        child: Container(
                          color: Colors.grey[200],
                        ),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
        options: CarouselOptions(
          initialPage: controller.currentPageIndex.value,
          onPageChanged: (index, _) => controller.updatePageIndicator(index),
          viewportFraction: 1,
          autoPlay: true,
          enlargeCenterPage: true,
        ),
      );
    });
  }
}
