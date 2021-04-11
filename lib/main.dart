import 'package:flutter/material.dart';
import 'package:folders_file/pages/home/home.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: "home",
        routes: {"home": (BuildContext context) => new Home()});
  }
}
