import 'package:corestateless/core/components/column/card_column.dart';
import 'package:corestateless/core/components/row/card_row.dart';
import 'package:flutter/material.dart';

class CardRowColumn extends StatelessWidget {
  final Widget child;

  const CardRowColumn({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      // shape: Border.all(),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: CardRow(
        child: CardColumn(child: child),
      ),
    );
  }
}
