import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/theme.dart';
import '../textWithFont.dart';

class ListTileCard extends StatelessWidget {
  const ListTileCard({
    Key? key, required this.subtitleWidget,
  }) : super(key: key);
final Widget subtitleWidget;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Mc Donalds',
        style: TextStyle(
            //                    fontSize: 15,
            fontWeight: FontWeight.w900,
            color: Colors.black),
      ),
      leading: CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage(
          'assets/res.jpeg',
        ),
      ),
      trailing: SizedBox(
        width: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.star,
              color: mainColor,
              size: 20,
            ),
            Text(
              '4.9',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
      subtitle: subtitleWidget,
    );
  }
}
