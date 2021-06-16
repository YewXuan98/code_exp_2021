import 'package:flutter/material.dart';

class RouteFeedItem {
  final String id;
  final String parkId;
  final String title;
  final String authorName;
  final DateTime datetime;
  final String description;
  final String difficulty;
  final double distance;
  final List<String> terrain;
  final List<String> amenities;
  final String scenicView;
  final List<String> tags;
  final String imageUrl;
  final int numberOfFavs;
  final bool isFav;

  const RouteFeedItem({
    @required this.id,
    @required this.parkId,
    @required this.title,
    @required this.authorName,
    @required this.datetime,
    @required this.description,
    @required this.difficulty,
    @required this.distance,
    @required this.terrain,
    @required this.amenities,
    @required this.scenicView,
    @required this.tags,
    @required this.numberOfFavs,
    @required this.imageUrl,
    this.isFav = false,
  });
}

class RouteFeed with ChangeNotifier {
  List<RouteFeedItem> _items = [
    RouteFeedItem(
      id: 'r1',
      parkId: 'e1',
      title: 'Butterfly Route',
      authorName: 'Brian Wong',
      datetime: DateTime.now(),
      description:
          'Forest Trail that passes by multiple interesting restaurants. Bring along an extra change of clothes and make sure to wear an old pair of shoes as they will get dirty!',
      difficulty: 'Intense',
      distance: 13.7,
      terrain: ['muddy', 'rocky'],
      amenities: ['restaurants', 'toilets'],
      scenicView:
          'https://i.guim.co.uk/img/media/d143e03bccd1150ef52b8b6abd7f3e46885ea1b3/0_182_5472_3283/master/5472.jpg?width=1200&quality=85&auto=format&fit=max&s=d5a74a011c3fef1ad9c1c962721d221d',
      tags: ['Punggol Park'],
      numberOfFavs: 26,
      imageUrl: 'assets/images/butterfly_route.jpg',
      isFav: true,
    ),
    RouteFeedItem(
      id: 'r2',
      parkId: 'e1',
      title: 'Breezy Run',
      authorName: 'Stephanie Koh',
      datetime: DateTime.now(),
      description:
          'I love this route in the evenings after work. Easy pace with beautiful sights, a great way to unwind! It ends at a bar that serves refreshing and delicious cocktails',
      difficulty: 'Easy',
      distance: 2.4,
      terrain: ['pavement', 'leafy'],
      amenities: ['toilets', 'playground'],
      scenicView:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuyh75jufWAjrDxrxe_Q4BMPfJGAWpvVYZDQ&usqp=CAU',
      tags: ['Punggol Park'],
      numberOfFavs: 56,
      imageUrl: 'assets/images/butterfly_route.jpg',
      isFav: true,
    ),
    RouteFeedItem(
      id: 'r3',
      parkId: 'e1',
      title: 'Sisyphus',
      authorName: 'Thomas Abraham',
      datetime: DateTime.now(),
      description:
          'Much like the Greek mythology of Sisyphus, this route is an absolute uphill battle. I managed a personal best timing of 16:42.',
      difficulty: 'Intense',
      distance: 4.8,
      terrain: ['pavement'],
      amenities: ['playground'],
      scenicView:
          'https://www.littledayout.com/wp-content/uploads/01-clementi-woods-park.jpg',
      tags: ['Punggol Park'],
      numberOfFavs: 13,
      imageUrl: 'assets/images/butterfly_route.jpg',
    ),
    RouteFeedItem(
      id: 'r4',
      parkId: 'e1',
      title: 'By The Water',
      authorName: 'Azfar Barudin',
      datetime: DateTime.now(),
      description:
          'A long route that will take about an hour. However, the gentle slopes and cool temperatures near  the water makes this a relatively easy route.',
      difficulty: 'Moderate',
      distance: 6,
      terrain: ['sandy', 'pavement'],
      amenities: ['toilets', 'playground'],
      scenicView:
          'https://upload.wikimedia.org/wikipedia/commons/8/8a/Changi_Beach_Park_5%2C_Jul_06.JPG',
      tags: ['Punggol Park'],
      numberOfFavs: 72,
      imageUrl: 'assets/images/butterfly_route.jpg',
    ),
  ];

  List<RouteFeedItem> get item {
    return [..._items];
  }

  RouteFeedItem findById(String id) {
    return _items.firstWhere((item) => item.id == id);
  }

  List<RouteFeedItem> get favouritesOnly {
    return _items.where((item) => item.isFav).toList();
  }

}