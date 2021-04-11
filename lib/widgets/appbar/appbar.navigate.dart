import "package:flutter/material.dart";

class AppbarNavigate extends StatelessWidget {
  Widget build(context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("View your"),
        Row(children: [Icon(Icons.settings), Icon(Icons.more_vert_outlined)])
      ],
    ));
  }
}
