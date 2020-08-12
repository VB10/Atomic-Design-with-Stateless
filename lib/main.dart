import 'package:corestateless/view/buttons/buttons_view.dart';
import 'package:corestateless/view/feauture/login/login_view.dart';
import 'package:flutter/material.dart';
import './view/navigation/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: LoginView(),
    );
  }
}
