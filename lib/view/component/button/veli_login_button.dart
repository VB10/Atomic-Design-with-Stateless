import 'package:flutter/material.dart';

import 'package:corestateless/core/components/buttons/login_button.dart';

class VeliLoginButton extends StatefulWidget {
  final Function(User user, String errorMessage) onCompleted;

  const VeliLoginButton({Key key, this.onCompleted}) : super(key: key);
  @override
  _VeliLoginButtonState createState() => _VeliLoginButtonState();
}

class _VeliLoginButtonState extends State<VeliLoginButton> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      width: MediaQuery.of(context).size.width * (isLoading ? 0.2 : 1),
      height: MediaQuery.of(context).size.height * (isLoading ? 0.05 : 0.1),
      child: LoginButton(
        isLoading: isLoading,
        onPresed: () async {
          changeLoading();
          await Future.delayed(Duration(seconds: 1));
          changeLoading();
          //MARK: SERVICE RESPONSE OKEY
          widget.onCompleted(User(token: "vvv"), null);
        },
      ),
    );
  }

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}

class User {
  String token;
  User({
    this.token,
  });
}
