import 'package:code_exp_2021/providers/carousell.dart';
import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  final Carousell carouselItemData;
  CarouselCard(this.carouselItemData);

  @override
  Widget build(BuildContext context) {
    CarouselCard(this.carouselItemData);

    return Container(
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          child: Image.asset(carouselItemData.assetId)),
      ),
    );
  }
}
