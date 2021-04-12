import "package:flutter/material.dart";
import 'package:folders_file/widgets/appbar/appbar.navigate.dart';
import 'package:folders_file/widgets/separated/separated.widget.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blue[100], Colors.white])),
                child: ListView(children: [
                  AppbarNavigate(),
                  this.title(),
                  Separated(0, 25.0),
                  this.search()
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

  Container search() {
    return Container(
      margin: EdgeInsets.all(7.0),
      child: TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
            fillColor: Colors.white,
            icon: Icon(Icons.search),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            hintText: "Search"),
      ),
    );
  }
}
