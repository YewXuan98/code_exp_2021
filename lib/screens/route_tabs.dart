import 'package:code_exp_2021/main.dart';
import 'package:code_exp_2021/screens/route_draw.dart';
import 'package:code_exp_2021/screens/route_quickstart.dart';
import 'package:flutter/material.dart';

class RunningScreen extends StatefulWidget {
  @override
  _RunningScreenState createState() => _RunningScreenState();
}

class _RunningScreenState extends State<RunningScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Route"),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Quickstart'),
                Tab(text: 'Draw'),
              ],
            ),
          ),
          body: TabBarView(
              children: [RouteQuickstartScreen(), RouteDrawScreen()]),
        ),
      ),
    );
  }
}
