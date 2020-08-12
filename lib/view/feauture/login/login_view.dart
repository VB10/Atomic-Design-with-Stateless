import 'package:corestateless/core/base/core_state.dart';
import 'package:corestateless/core/components/buttons/login_button.dart';
import 'package:corestateless/core/components/page/page_view_builder.dart';
import 'package:corestateless/view/component/button/veli_login_button.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends BaseState<LoginView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  String data = " asdasd";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        data = MediaQuery.of(context).size.height.toString();
      });
    });

    future = getUser();
  }

  Future<User> future;
  Future<User> getUser() async {
    await Future.delayed(Duration(seconds: 1));

    return User(token: "aa");
  }

  Color color = Colors.white;

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: color,
      appBar: buildAppBar(),
      bottomNavigationBar: buildCenter,
      body: Column(
        children: [Expanded(child: buildPageViewCustom()), buildFutureBuilder(), buildIconButton()],
      ),
    );
  }

  PageViewCustom buildPageViewCustom() {
    return PageViewCustom(
      itemCount: 5,
      onChange: (index) {
        //BUSINESS
      },
    );
  }

  IconButton buildIconButton() {
    return IconButton(
      icon: Icon(
        Icons.access_alarm,
        color: currentTheme.accentColor,
      ),
      onPressed: () {
        setState(() {
          color = Colors.white;
        });
      },
    );
  }

  FutureBuilder<User> buildFutureBuilder() {
    return FutureBuilder<User>(
      future: future,
      builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data.token);
        } else {
          return Placeholder();
        }
      },
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(data),
    );
  }

  Widget get buildCenter {
    return VeliLoginButton(
      onCompleted: (user, errorMessage) {
        if (user is User) {
          scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Okey")));
        }
      },
    );
  }
}
