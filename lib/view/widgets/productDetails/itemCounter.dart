import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class ItemCounter extends StatelessWidget {
  const ItemCounter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(mainColor),
                    elevation: MaterialStateProperty.all(5.0),
                  ),
                  onPressed: () {},
                  child: Text("-"),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 35,
                  width: 55,
                  decoration: const ShapeDecoration(
                    shape: StadiumBorder(
                      side: BorderSide(color: Colors.orange),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "2",
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(mainColor),
                      elevation: MaterialStateProperty.all(5.0)),
                  onPressed: () {},
                  child: Text("+"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}