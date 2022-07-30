import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String title;
  SearchBar({required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: Colors.green,
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Image.asset(
              "assets/search_filled.png",
            ),
            hintText: title,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
            contentPadding: const EdgeInsets.only(
              top: 17,
            ),
          ),
        ),
      ),
    );
  }
}
