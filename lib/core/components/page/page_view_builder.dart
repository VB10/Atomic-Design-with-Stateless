import 'package:flutter/material.dart';

class PageViewCustom extends StatefulWidget {
  final int itemCount;
  final Function(int index) onChange;

  const PageViewCustom({Key key, this.itemCount, this.onChange}) : super(key: key);

  @override
  _PageViewCustomState createState() => _PageViewCustomState();
}

class _PageViewCustomState extends State<PageViewCustom> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: widget.itemCount,
      onPageChanged: (value) {
        setState(() {
          currentIndex = value;
        });
        widget.onChange(value);
      },
      controller: PageController(viewportFraction: 0.5),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return CircleAvatar(
          backgroundColor: currentIndex == index ? Colors.red : Colors.blue,
        );
      },
    );
  }
}
