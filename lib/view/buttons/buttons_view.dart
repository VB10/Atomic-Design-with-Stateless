import 'package:corestateless/view/component/card/card_row_column.dart';
import 'package:corestateless/view/component/shop/model/shop.dart';
import 'package:corestateless/view/component/shop/shopping_card.dart';
import 'package:flutter/material.dart';

import '../component/white_take_button.dart';

class ButtonsView extends StatefulWidget {
  @override
  _ButtonsViewState createState() => _ButtonsViewState();
}

class _ButtonsViewState extends State<ButtonsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            WhiteTakeButton(onPressed: () {}),
            Expanded(
              child: Container(
                color: Colors.red,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (context, index) => ShoppingCard(
                    model: Shop(name: "veli", price: "11", star: "4.8"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  ListView buildListViewShop() {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (context, index) => AspectRatio(
          aspectRatio: 2 / 1,
          child: ShoppingCard(
            model: Shop(name: "Veli", price: "444", star: "44"),
          )),
    );
  }

  Text buildTextTshirt() {
    return Text(
      "V Neck Shirt - Pink",
      style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.w700),
    );
  }
}
