import 'package:flutter/material.dart';
import 'package:newindent/documents/Document.dart';
import 'package:newindent/models/ListElement.dart';

void main() => runApp(Drops());

class Drops extends StatefulWidget {
  final ListElement list;
  final String id, password, username;

  Drops({this.list, this.id, this.password, this.username});

  @override
  _DropsState createState() => _DropsState();
}

class _DropsState extends State<Drops> {
  Document document = Document();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("drops down values here"),
        ),
        body: Container(
          child: ListView.builder(itemBuilder: null),
        ));
  }
}
