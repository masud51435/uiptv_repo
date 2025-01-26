import 'package:UIPtv/controller/home_controller/category_controller.dart';
import 'package:UIPtv/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final CategoryController controller = Get.put(CategoryController());
    return SizedBox(
      height: 40,
      child: Obx(
        () => ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            controller.time.length,
            (index) => GestureDetector(
              onTap: () => controller.onItemPressed(index),
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: controller.isSelect(index)
                      ? selectedButtonColor
                      : categoryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  controller.time[index],
                  style: TextStyle(color: whiteColor),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
