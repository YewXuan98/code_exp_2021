import 'package:flutter/material.dart';

class Carousell {
  final String id;
  final String assetId;

  Carousell(this.id, this.assetId);
}

class Carousells with ChangeNotifier {
  List<Carousell> _items = [
    Carousell('c1', 'assets/images/covid_banner1.jpg'),
    Carousell('c2', 'assets/images/covid_banner2.png'),
    Carousell('c3', 'assets/images/covid_banner3.jpg'),
  ];

  List<Carousell> get item {
    return [..._items];
  }

  Carousell findById(String id) {
    return _items.firstWhere((item) => item.id == id);
  }
}
