import 'package:flutter/material.dart';

class FloatingRectangleButton extends StatelessWidget {
  final String text;
  final Function(bool isOkey) onPressed;

  const FloatingRectangleButton({Key key, this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed == null
          ? null
          : () {
              this.onPressed(true);
            },
      label: Row(
        children: <Widget>[Icon(Icons.star), Text(text)],
      ),
    );
  }
}
