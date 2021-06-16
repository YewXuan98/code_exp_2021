import 'package:flutter/material.dart';

class ParkItem with ChangeNotifier{
  final String id;
  final String title;
  final String distance;
  final List amenities;
  final int covidNumbers;
  final String imageUrl;

  ParkItem(
      {
      @required this.id,
      @required this.title,
      @required this.distance,
      @required this.amenities,
      @required this.covidNumbers,
      @required this.imageUrl});
}