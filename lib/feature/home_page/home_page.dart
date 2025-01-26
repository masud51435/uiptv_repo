import 'package:UIPtv/feature/home_page/widgets/app_search_bar.dart';
import 'package:UIPtv/feature/home_page/widgets/appbar.dart';
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
