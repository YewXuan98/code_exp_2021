import 'package:code_exp_2021/providers/park.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/parkItem.dart';

class ParkCard extends StatelessWidget {
  final ParkItem parkItemData;

  ParkCard(this.parkItemData);

  @override
  Widget build(BuildContext context) {
    Color parkCardColour = Colors.white;
    Color fontColour = Color.fromRGBO(20, 51, 51, 1);

    if (parkItemData.covidNumbers == 0) {
      parkCardColour = Colors.white;
      fontColour = Color.fromRGBO(20, 51, 51, 1);
    }
    if (parkItemData.covidNumbers >= 1 && parkItemData.covidNumbers <= 10) {
      parkCardColour = Colors.red.shade100;
      fontColour = Color.fromRGBO(20, 51, 51, 1);
    }
    if (parkItemData.covidNumbers > 10) {
      parkCardColour = Colors.red.shade200;
      fontColour = Colors.red;
    }

    return Container(
      child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            color: parkCardColour,
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: SizedBox(
                  width: 100,
                  height: 90,
                  child: Image.network(parkItemData.imageUrl),
                ),
              ),
              Container(height: 100, width: 15),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      parkItemData.title,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(parkItemData.distance + 'km from you',
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.bodyText2),
                    Container(
                      height: 10,
                    ),
                    Text(
                        parkItemData.amenities
                            .toString()
                            .replaceAll('[', '')
                            .replaceAll(']', ''),
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.bodyText2),
                    Material(
                      color: parkCardColour,
                      child: Text(
                          parkItemData.covidNumbers.toString() +
                              ' recent covid cases',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 10,
                              color: fontColour,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 25,
        )
      ]),
    );
  }
}
