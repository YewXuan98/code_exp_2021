import 'package:code_exp_2021/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                child: Text(
                  'Announcements',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
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
          )
        ],
      ),
    );
  }
}
