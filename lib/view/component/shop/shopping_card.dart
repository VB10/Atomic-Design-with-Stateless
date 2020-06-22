import 'package:corestateless/core/components/buttons/rectange_floating_button.dart';
import 'package:corestateless/view/component/card/card_row_column.dart';
import 'package:corestateless/view/component/shop/model/shop.dart';
import 'package:flutter/material.dart';

class ShoppingCard extends StatelessWidget {
  final Shop model;
  final VoidCallback onPressed;

  const ShoppingCard({Key key, this.model, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CardRowColumn(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[Expanded(child: Placeholder()), buildTextTshirt(context), buildRowStarAndPrice(context)],
      ),
    );
  }

  Row buildRowStarAndPrice(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(model.price, style: Theme.of(context).textTheme.headline5),
        FloatingRectangleButton(
            onPressed: (isOkey) {
              if (this.onPressed != null) this.onPressed();
            },
            text: model.star)
      ],
    );
  }

  Text buildTextTshirt(BuildContext context) {
    return Text(
      model.name,
      style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.w700),
    );
  }
}
