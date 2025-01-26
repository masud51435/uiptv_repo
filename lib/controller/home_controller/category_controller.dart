import 'package:get/get.dart';

class CategoryController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void onItemPressed(int index) {
    selectedIndex.value = index;
  }

  bool isSelect(int index) {
    bool isSelected = selectedIndex.value == index;
    return isSelected;
  }

  List<String> time = [
    'All',
    'Action',
    'Anime',
    'Sci-fi',
    'Thriller',
    'Comedy',
    'Drama',
    'Romance',
    'Horror',
    'Adventure',
    'Fantasy',
    'Mystery',
    'Crime',
    'Animation',
    'Family',
    'Documentary',
    'History',
  ];
}
