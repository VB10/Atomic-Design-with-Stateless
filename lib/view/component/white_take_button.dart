import 'package:corestateless/core/components/buttons/photo_take_button.dart';
import 'package:flutter/material.dart';

class WhiteTakeButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const WhiteTakeButton({Key key, this.onPressed, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PhotoTakeButton(
      onPressed: onPressed,
      child: child,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black12,
    );
  }
}
