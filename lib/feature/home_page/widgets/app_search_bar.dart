import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class HomeSearchBar extends StatefulWidget {
  const HomeSearchBar({
    super.key,
    required this.hintText,
    this.hintStyle = const TextStyle(color: greyColor),
    this.onTap,
  });

  final String hintText;
  final TextStyle? hintStyle;
  final void Function()? onTap;

  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              hintText: widget.hintText,
              hintStyle: widget.hintStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(color: borderColor),
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
        InkWell(
          onTap: widget.onTap,
          child: Container(
            height: 43,
            width: 43,
            decoration: BoxDecoration(
              color: redColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.tune,
              color: whiteColor,
            ),
          ),
        )
      ],
    );
  }
}
