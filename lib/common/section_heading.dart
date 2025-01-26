import 'package:UIPtv/core/app_colors.dart';
import 'package:flutter/material.dart';

class AppSectionHeading extends StatelessWidget {
  const AppSectionHeading({
    super.key,
    required this.text,
    this.endText = 'See More',
    this.onTap,
  });

  final String text, endText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: whiteColor,
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            endText,
            style: TextStyle(
              color: whiteColor,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
