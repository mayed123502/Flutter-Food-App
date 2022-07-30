import 'package:flutter/material.dart';

Widget buildIconWidget() {
  return Material(
    color: Colors.transparent,
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            // color: darkSettings,
          ),
          child: const Icon(
            Icons.dark_mode,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text("Dark Mode"),
      ],
    ),
  );
}
