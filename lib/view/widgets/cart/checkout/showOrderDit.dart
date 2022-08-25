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
            children:  [
              Text("Sub Total",style: TextStyle(color: Theme.of(context).textTheme.headline1!.color!.withOpacity(.6))),
              Text(
                "\$68",style: TextStyle(color: Theme.of(context).textTheme.headline1!.color!)
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Text("Delivery Cost",style: TextStyle(color: Theme.of(context).textTheme.headline1!.color!.withOpacity(.6))),
              Text(
                "\$2",style: TextStyle(color: Theme.of(context).textTheme.headline1!.color!)
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
            children:  [
              Text("Total",style: TextStyle(color: Theme.of(context).textTheme.headline1!.color!.withOpacity(.6))),
              Text(
                "\$66",style: TextStyle(color: Theme.of(context).textTheme.headline1!.color!)
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
