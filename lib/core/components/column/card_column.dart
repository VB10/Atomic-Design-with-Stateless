import 'package:flutter/material.dart';

class CardColumn extends StatelessWidget {
  final Widget child;

  const CardColumn({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[Spacer(flex: 1), Expanded(flex: 19, child: child), Spacer(flex: 1)],
    );
  }
}
