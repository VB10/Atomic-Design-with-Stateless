import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  double dynamicWidth(double value) {
    return MediaQuery.of(context).size.width * value;
  }

  ThemeData get currentTheme => ThemeData();
}
