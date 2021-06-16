import 'package:code_exp_2021/providers/route_feed.dart';
import 'package:flutter/material.dart';

class FeaturedCards extends StatelessWidget {
  final RouteFeedItem routeFeedItem;

  FeaturedCards(this.routeFeedItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: 145,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(40)),
        child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              //HEADER for featured
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    routeFeedItem.title,
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              //Image
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
                width: MediaQuery.of(context).size.width * 0.8,

                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(routeFeedItem.imageUrl,)),
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       color: Colors.black),
                //   padding: EdgeInsets.all(6),
                //   child: Image.asset(routeFeedItem.imageUrl),
                //   width: MediaQuery.of(context).size.width * 0.4,
                //   height: MediaQuery.of(context).size.width * 0.5,
                // ),
              ),
            ])),
      ),
    );
  }
}
