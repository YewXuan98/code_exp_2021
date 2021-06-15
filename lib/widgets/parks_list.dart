import 'package:code_exp_2021/widgets/parks_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/park.dart';


class ParksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final parksData = Provider.of<Parks>(context, listen: false);
    final parks = parksData.exploreitems;
    return ListView.builder(itemBuilder: (ctx, i) => ParkCard(parksData.exploreitems[i]) , itemCount: parks.length,);
  }
}