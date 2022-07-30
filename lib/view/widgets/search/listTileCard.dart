import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class ListTileCard extends StatelessWidget {
  const ListTileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Mc Donalds',
        style: TextStyle(
//                    fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
      ),
      leading: CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage(
          'assets/res.jpeg',
        ),
      ),
      trailing: IconButton(
        color: mainColor,
        onPressed: () {},
        icon: Icon(
          Icons.favorite_border,
          size: 30,
        ),
      ),
      subtitle: Row(
        children: [
          Icon(
            Icons.star,
            color: mainColor,
          ),
          Text(
            '4.9',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
