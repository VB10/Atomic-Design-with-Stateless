import 'package:flutter/material.dart';

class PhotoTakeButton extends StatelessWidget {
  final Color foregroundColor;
  final Color backgroundColor;

  final Widget child;
  final VoidCallback onPressed;

  const PhotoTakeButton({Key key, this.foregroundColor, this.backgroundColor, @required this.onPressed, this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: backgroundColor,
      onPressed: onPressed,
      child: buildContainerBackgorund(),
    );
  }

  Container buildContainerBackgorund() {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(color: foregroundColor, shape: BoxShape.circle),
      child: child,
    );
  }
}
