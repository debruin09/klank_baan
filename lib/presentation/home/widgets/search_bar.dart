import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        width: MediaQuery.of(context).size.width * 0.35,
        child: TextField(
          decoration: InputDecoration(
              suffixIcon: Icon(Icons.search),
              hintText: "Search...",
              fillColor: Colors.white,
              border: OutlineInputBorder()),
        ));
  }
}
