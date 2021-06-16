import 'package:code_exp_2021/main.dart';
import 'package:code_exp_2021/providers/route_feed.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeFavourites extends StatelessWidget {
  final RouteFeedItem item;
  HomeFavourites(this.item);

  @override
  Widget build(BuildContext context) {
    return (item.isFav == true) ? Container(): Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: Colors.white),
      child: Column(children: [
        Row(children: [
          Container(
              child: Container(
            padding: EdgeInsets.all(6),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                color: Colors.black,
                width: 50,
                height: 50,
                child: Image.asset(item.imageUrl),
              ),
            ),
          )),
          Container(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                child: Text(
                  item.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                item.difficulty,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ]),
          ),
          Container(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  DateFormat('EEE').format(item.datetime),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                FittedBox(
                    child: Text(
                  DateFormat('kk:mm:a').format(item.datetime) +
                      '-' +
                      DateFormat('kk:mm:a').format(item.datetime),
                  style: Theme.of(context).textTheme.bodyText1,
                ))
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.1,
              child: FlatButton(
            child: Icon(
              Icons.arrow_forward,
            ),
            onPressed: () {}, //bring u to the route
          ))
        ]),
      ]),
    );
  }
}
