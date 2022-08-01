import 'package:flutter/material.dart';

import '../../../../utils/theme.dart';

class AddCardButton extends StatelessWidget {
  const AddCardButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.add,
          color: mainColor,
        ),
        Text(
          "Add Card",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: mainColor),
        )
      ],
    );
  }
}