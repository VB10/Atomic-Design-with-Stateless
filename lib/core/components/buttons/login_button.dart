import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onPresed;

  const LoginButton({Key key, this.isLoading, this.onPresed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: this.onPresed,
      child: isLoading
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            )
          : Text("Login"),
    );
  }
}
