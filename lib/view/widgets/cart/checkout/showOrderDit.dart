import 'package:flutter/material.dart';

import '../../../../utils/theme.dart';

class ShowOrderDit extends StatelessWidget {
  const ShowOrderDit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Sub Total"),
              Text(
                "\$68",
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Delivery Cost"),
              Text(
                "\$2",
              )
            ],
          ),
          Divider(
            height: 40,
            color: mainColor.withOpacity(0.25),
            thickness: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Total"),
              Text(
                "\$66",
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
