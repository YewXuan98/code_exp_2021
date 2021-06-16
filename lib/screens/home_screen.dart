import 'package:carousel_slider/carousel_slider.dart';
import 'package:code_exp_2021/main.dart';
import 'package:code_exp_2021/providers/carousell.dart';
import 'package:code_exp_2021/providers/route_feed.dart';
import 'package:code_exp_2021/widgets/carousel_card.dart';
import 'package:code_exp_2021/widgets/featured_card.dart';
import 'package:code_exp_2021/widgets/home_favourites.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final carousellData = Provider.of<Carousells>(context, listen: false);
    final carousell = carousellData.item;

    final routeFeedData = Provider.of<RouteFeed>(context, listen: false);
    final routeFeed = routeFeedData.item;

    return SingleChildScrollView(
          child: Container(
        color: kPrimaryColor,
        child: Column(
          children: [
            Container(
              color: kPrimaryColor,
              height: 100,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Announcements',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
                RaisedButton(
                  elevation: 0,
                  onPressed: () {},
                  color: kPrimaryColor,
                  child: Row(
                    children: [
                      Text(
                        'See more',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width * 0.9,
              child: CarouselSlider.builder(
                  itemCount: carousell.length,
                  itemBuilder: (
                    ctx,
                    i,
                  ) =>
                      CarouselCard(carousell[i])),
            ),
            Container(
              height: 0.5,
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Favourites',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
            ]),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kPrimaryColor,
              ),
              height: 150,
              width: MediaQuery.of(context).size.width * 0.92,
              child: ListView.builder(
                itemBuilder: (ctx, i) => HomeFavourites(routeFeedData.favouritesOnly[i]),
                itemCount: routeFeed.length,
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          'Featured',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                    ),
                    RaisedButton(
                      elevation: 0,
                      onPressed: () {},
                      color: kPrimaryColor,
                      child: Row(
                        children: [
                          Text(
                            'Find suggested routes',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, i) => FeaturedCards(routeFeed[i]),
                    itemCount: routeFeed.length,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
