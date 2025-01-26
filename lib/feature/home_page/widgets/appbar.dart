import 'package:UIPtv/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Hello Rafsan',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: whiteColor,
          ),
        ),
        InkWell(
          onTap: () => Get.toNamed('/notifications'),
          child: const Badge(
            label: Text('5'),
            child: Icon(
              Iconsax.notification5,
              size: 32,
            ),
          ),
        )
      ],
    );
  }
}
