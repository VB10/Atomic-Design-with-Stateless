import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  final String value;

  const DetailView({Key key, this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(tag: "Hero1", child: Text("$value")),
      ),
    );
  }
}
