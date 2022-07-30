import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class PreferredSizeInAppBar extends StatelessWidget with PreferredSizeWidget {
  const PreferredSizeInAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      // ignore: sort_child_properties_last
      child: Container(
        color: appBarPreferredSizeColor.withOpacity(.8),
        height: .5,
      ),
      preferredSize: const Size.fromHeight(4.0),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(4.0);
}
