import "package:flutter/material.dart";
import 'package:folders_file/widgets/appbar/appbar.navigate.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: ListView(children: [AppbarNavigate()])));
  }
}
