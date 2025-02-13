import 'package:UIPtv/core/app_colors.dart';
import 'package:UIPtv/core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UIPtv',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: blackColor,
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.BOTTOMNAVBAR,
      getPages: AppRoutes.routes,
    );
  }
}
