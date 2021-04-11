import "package:flutter/material.dart";
import 'package:folders_file/widgets/separated/separated.widget.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: ListView(children: [AppbarNavigate()])));
  }
}

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
