import 'package:code_exp_2021/providers/parkItem.dart';
import 'package:flutter/material.dart';

class Parks with ChangeNotifier {
  List<ParkItem> _exploreitems = [
    ParkItem(
        id: 'e1',
        title: 'Punggol Park',
        distance: '5',
        amenities: ['playgrounds', 'Fitness corner'],
        covidNumbers: 0,
        imageUrl:
            'https://image.shutterstock.com/image-photo/lorong-halus-bridge-punggol-waterways-260nw-601960511.jpg'),
    ParkItem(
        id: 'e2',
        title: 'MacRitchie Park',
        distance: '24',
        amenities: ['Trails', 'Fitness corner', 'Cycling friendly'],
        covidNumbers: 2,
        imageUrl:
            'https://image.shutterstock.com/image-photo/punggol-singapore-aug-16-2018-260nw-1726200595.jpg'),
    ParkItem(
        id: 'e3',
        title: 'Singapore Botanic Gardens',
        distance: '12',
        amenities: ['Trails', 'Fitness corner', 'Cycling friendly','Toilet', 'Food Court'],
        covidNumbers: 12,
        imageUrl:
            'https://image.shutterstock.com/image-photo/punggol-singapore-aug-16-2018-260nw-1726200595.jpg'),

    ParkItem(
        id: 'e4',
        title: 'Punggol Park',
        distance: '5',
        amenities: ['playgrounds', 'Fitness corner'],
        covidNumbers: 0,
        imageUrl:
            'https://image.shutterstock.com/image-photo/lorong-halus-bridge-punggol-waterways-260nw-601960511.jpg'),
    ParkItem(
        id: 'e5',
        title: 'MacRitchie Park',
        distance: '24',
        amenities: ['Trails', 'Fitness corner', 'Cycling friendly'],
        covidNumbers: 2,
        imageUrl:
            'https://image.shutterstock.com/image-photo/punggol-singapore-aug-16-2018-260nw-1726200595.jpg'),
    ParkItem(
        id: 'e6',
        title: 'Singapore Botanic Gardens',
        distance: '12',
        amenities: ['Trails', 'Fitness corner', 'Cycling friendly','Toilet', 'Food Court'],
        covidNumbers: 12,
        imageUrl:
            'https://image.shutterstock.com/image-photo/punggol-singapore-aug-16-2018-260nw-1726200595.jpg'),
  ];

  List<ParkItem> get exploreitems {
    return [..._exploreitems];
  }

  ParkItem findById(String id) {
    return _exploreitems.firstWhere((item) => item.id == id);
  }
}
