import 'package:UIPtv/core/app_colors.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Rafsan',
              style: TextStyle(
                fontSize: 25,
                color: whiteColor,
              ),
            ),
            Text(
              "Let's watch today",
              style: TextStyle(
                fontSize: 14,
                color: greyColor,
              ),
            ),
          ],
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: SweepGradient(
              colors: [
                Colors.pink,
                Colors.orange,
                Colors.yellow,
                Colors.green,
                Colors.blue,
                Colors.purple,
                Colors.pink,
              ],
              stops: [0.1, 0.3, 0.5, 0.7, 0.9, 1.0, 1.0],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.wired.com/photos/5933592f283bfc394dcbef9f/master/w_1600,c_limit/zuckerberg.jpg'),
            ),
          ),
        )
      ],
    );
  }
}
