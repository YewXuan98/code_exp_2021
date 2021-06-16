import 'dart:async';

import 'package:code_exp_2021/main.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class RouteQuickstartScreen extends StatefulWidget {
  @override
  _RouteQuickstartScreenState createState() => _RouteQuickstartScreenState();
}

class _RouteQuickstartScreenState extends State<RouteQuickstartScreen> {
  Stopwatch watch = new Stopwatch();
  Timer timer;
  bool startStop = true;
  String elapsedTime = '';

  updateTime(Timer timer) {
    if (watch.isRunning) {
      setState(() {
        print("startstop Inside=$startStop");
        elapsedTime = transformMilliSeconds(watch.elapsedMilliseconds);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).canvasColor,
      child: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Text(
                    'Time:' + elapsedTime,
                    style: Theme.of(context).textTheme.headline6,
                  )),
              Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Text(
                    'Distance: --/--',
                    style: Theme.of(context).textTheme.headline6,
                  ))
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(20)),
          height: 300,
          width: 300,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset('assets/images/punggol_map.png')),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 60, height: 60),
                  child: ElevatedButton(
                    onPressed: () {
                      startOrStop();
                    },
                    child: FittedBox(
                        fit: BoxFit.fill,
                        child: (startStop == true)
                            ? Text(
                                'START',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black),
                                maxLines: 1,
                              )
                            : Text(
                                'STOP',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black),
                                maxLines: 1,
                              )),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Color.fromRGBO(168, 218, 220, 1)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 60, height: 60),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        watch.reset();
                      });
                    },
                    child: FittedBox(
                        fit: BoxFit.fill,
                        child: Text(
                          'RESET',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                          maxLines: 1,
                        )),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Color.fromRGBO(230, 57, 70, 1)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.share_outlined),
                  label: Text("Share")),
              Container(
                width: 20,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.save_alt_outlined),
                  label: Text("Save")),
            ],
          ),
        )
      ]),
    );
  }

  startOrStop() {
    if (startStop) {
      startWatch();
    } else {
      stopWatch();
    }
  }

  startWatch() {
    setState(() {
      startStop = false;
      watch.start();
      timer = Timer.periodic(Duration(milliseconds: 100), updateTime);
    });
  }

  stopWatch() {
    setState(() {
      startStop = true;
      watch.stop();
      setTime();
    });
  }

  setTime() {
    var timeSoFar = watch.elapsedMilliseconds;
    setState(() {
      elapsedTime = transformMilliSeconds(timeSoFar);
    });
  }

  transformMilliSeconds(int milliseconds) {
    int hundreds = (milliseconds / 10).truncate();
    int seconds = (hundreds / 100).truncate();
    int minutes = (seconds / 60).truncate();
    int hours = (minutes / 60).truncate();

    String hoursStr = (hours % 60).toString().padLeft(2, '0');
    String minutesStr = (minutes % 60).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');

    return "$hoursStr:$minutesStr:$secondsStr";
  }
}
