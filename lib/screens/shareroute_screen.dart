import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class ShareScreen extends StatefulWidget {
  static const routeName = "/route-form";
  @override
  _ShareScreenState createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  final _descriptionFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Route'),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
            alignment: Alignment.centerRight,
          )
        ],
      ),
      body: Container(
        color: Theme.of(context).canvasColor,
        padding: EdgeInsets.all(15),
        child: Form(
            child: ListView(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Title'),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_descriptionFocusNode);
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Description'),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.multiline,
              focusNode: _descriptionFocusNode,
            ),
          ],
        )),
      ),
    );
  }
}
