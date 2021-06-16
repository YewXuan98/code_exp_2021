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
                ),
                width: 130,
                height: 170,
                child: Material(
                  elevation: 3,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(
                        routeFeedItem.imageUrl,
                      )),
                ),
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
              Container(
                height: 6,
              ),
              Container(
                child: Text(
                  routeFeedItem.authorName,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 12,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    child: Image.asset('assets/images/heart_featured.png'),
                  ),
                  Container(
                      padding: EdgeInsets.all(6),
                      child: Text(
                        routeFeedItem.numberOfFavs.toString(),
                        style: Theme.of(context).textTheme.bodyText1,
                      )),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: FittedBox(
                                          child: Text(
                        routeFeedItem.difficulty,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 1,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  textColor: Colors.red,
                  onPressed: () {},
                  child: Text('Read more...'),
                ),
              )
            ])),
      ),
    );
  }
}
