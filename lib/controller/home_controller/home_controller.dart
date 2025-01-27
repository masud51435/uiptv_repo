import 'package:get/get.dart';

import '../../common/scrollble_item.dart';

class HomeController extends GetxController {
  final RxList<ScrollableItem> trendingMovies = <ScrollableItem>[
    ScrollableItem(
      image:
          'https://m.media-amazon.com/images/M/MV5BNDZkYTZmNzgtNDM2MC00ZjE0LTk2M2ItOWIwNDUwZDk3ZWMxXkEyXkFqcGc@._V1_.jpg',
      title: 'Yes I Do',
    ),
    ScrollableItem(
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYvXMhY_SEgULxDoZ95-fXRyxS3Qj-nXfy-A&s',
      title: 'Inside Out 2',
    ),
    ScrollableItem(
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1wTDVJzl0BioMPNn5JkC3I6RNvG7cIp3iWQ&s',
      title: 'Fast X',
    ),
    ScrollableItem(
      image:
          'https://m.media-amazon.com/images/I/91r6OaC7wJL._AC_UF894,1000_QL80_.jpg',
      title: 'Babylon',
    ),
  ].obs;

  final RxList<ScrollableItem> continueWatching = <ScrollableItem>[
    ScrollableItem(
      image:
          'https://i.pinimg.com/736x/e7/16/73/e7167324df1fedd1d6f61f9e2896eed9.jpg',
      title: 'Wednesday',
    ),
    ScrollableItem(
      image:
          'https://m.economictimes.com/thumb/msid-109482109,width-1600,height-900,resizemode-4,imgsize-50560/emily-in-paris-season-4.jpg',
      title: 'Emily in Paris',
    ),
    ScrollableItem(
      image:
          'https://media.comicbook.com/uploads1/2015/04/hitman-agent-47-130371.jpg',
      title: 'HitMan Agent 47',
    ),
  ].obs;

  final RxList<ScrollableItem> recommendedForYou = <ScrollableItem>[
    ScrollableItem(
      image: 'https://i.mydramalist.com/jRokr_4c.jpg',
      title: 'Double Love',
    ),
    ScrollableItem(
      image:
          'https://m.media-amazon.com/images/M/MV5BOTNhYzYyNzktZTA4Ni00MTRiLWJiOGMtMGMyMjU0MzE1MzJlXkEyXkFqcGc@._V1_.jpg',
      title: 'Sunita',
    ),
    ScrollableItem(
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs6ngjORgRLqER78pzWJvH9bLrwizW93Bm2w&s',
      title: 'Pokemon Detective',
    ),
    ScrollableItem(
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtPI_ooAHDW0xUtDrbuMLGRdXcQx6D2YzQEA&s',
      title: 'John Wick Chapter 4',
    ),
  ].obs;
}
