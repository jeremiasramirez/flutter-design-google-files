import "package:flutter/material.dart";
import 'package:folders_file/widgets/appbar/appbar.navigate.dart';
import 'package:folders_file/widgets/field/textField.widget.dart';
import 'package:folders_file/widgets/floating-add/floating-add.widget.dart';
import 'package:folders_file/widgets/separated/separated.widget.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            floatingActionButtonLocation: FloatingAdd().location(),
            floatingActionButton: FloatingAdd(),
            body: Container(
                decoration: decorationForHome(),
                child: ListView(children: [
                  AppbarNavigate(),
                  this.title(),
                  Separated(0, 25.0),
                  Field()
                ]))));
  }

  Container title() {
    return Container(
        padding: EdgeInsets.only(top: 25.0, right: 10, left: 10),
        child: Text("Recents",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.blue[900])));
  }
}

Decoration decorationForHome() {
  return BoxDecoration(
      gradient: RadialGradient(
          tileMode: TileMode.clamp, colors: [Colors.blue[100], Colors.white]));
}
