import 'package:corestateless/view/navigation/detail_view.dart';
import 'package:flutter/material.dart';

class HomemView extends StatefulWidget {
  @override
  _HoemViewState createState() => _HoemViewState();
}

class _HoemViewState extends State<HomemView> {
  bool isLoading = false;
  String value = "";

  Future<bool> getUsers() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      isLoading = false;
    });
    value = "Veli";
    return Future.value(true);
  }

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        heroTag: "Hero1",
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailView(
              value: value,
            ),
          ));
        },
      ),
      body: isLoading ? Center(child: CircularProgressIndicator()) : Text(value),
    );
  }
}
