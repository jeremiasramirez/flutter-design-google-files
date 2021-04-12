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
                child: ListView(physics: BouncingScrollPhysics(), children: [
                  AppbarNavigate(),
                  this.title(),
                  Separated(0, 25.0),
                  Field(),
                  ContainerFiles().titleFiles(),
                  ContainerFiles()
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

class ContainerFiles extends StatelessWidget {
  Widget build(context) {
    return Table(children: [
      TableRow(
        children: [
          this.file("assets/images/excel.png"),
          this.file("assets/images/pdf.png"),
          this.file("assets/images/powerpoint.png")
        ],
      ),
      TableRow(children: [
        this.file("assets/images/excel.png"),
        this.file("assets/images/photoshop.png"),
        this.file("assets/images/powerpoint.png")
      ]),
      TableRow(children: [
        this.file("assets/images/excel.png"),
        this.file("assets/images/word.png"),
        this.file("assets/images/powerpoint.png")
      ])
    ]);
  }

  Widget file(String url) {
    return Container(
      child: Column(children: [card(url)]),
    );
  }

  Widget card(String url) {
    return Container(
        width: 115.0,
        height: 130.0,
        padding: EdgeInsets.all(4),
        margin: EdgeInsets.only(left: 7, right: 7, top: 7, bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color.fromRGBO(1, 1, 110, .1)),
        child: Column(
          children: [
            Icon(Icons.more_horiz_sharp),
            Separated(0, 2),
            this.fileImage(url),
            Separated(0, 14),
            this.titleCard(),
            Separated(0, 4),
            Text("12 April, 2021",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500))
          ],
        ));
  }

  Widget titleCard() {
    return Text("Paper scan",
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500));
  }

  Widget titleFiles() {
    return Container(
        margin: EdgeInsets.only(left: 12, top: 12, bottom: 16),
        child: Text(
          "Files",
          style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w500,
              color: Colors.blue[900]),
        ));
  }

  Image fileImage(String url) {
    return Image(width: 40.0, height: 40.0, image: AssetImage(url));
  }
}
