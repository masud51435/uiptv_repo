import 'package:UIPtv/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';
import 'scrollble_item.dart';

class ScrollableSection extends StatelessWidget {
  final List<ScrollableItem> items;
  final Function(String) onItemTap;
  final double imageWidth;
  final double imageHeight;

  const ScrollableSection({
    super.key,
    required this.items,
    required this.onItemTap,
    this.imageWidth = 120,
    this.imageHeight = 160,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: imageHeight + 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () => onItemTap(item.image),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: CachedNetworkImage(
                      imageUrl: item.image,
                      width: imageWidth,
                      height: imageHeight,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Shimmer.fromColors(
                        baseColor: Colors.grey[200]!,
                        highlightColor: Colors.grey[100]!,
                        child: Container(
                          color: Colors.grey[200],
                        ),
                      ),
                      errorWidget: (context, url, error) =>
                          Icon(Icons.error, size: 40, color: Colors.red),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: imageWidth,
                    child: Text(
                      item.title,
                      style: TextStyle(color: whiteColor, fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
