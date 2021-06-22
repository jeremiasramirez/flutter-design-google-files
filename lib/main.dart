import 'package:flutter/material.dart';
import 'package:folders_file/pages/home/home.page.dart';
import 'package:folders_file/pages/loading.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: "loading",
        routes: {
          "home": (BuildContext context) => new Home(),
          "loading": (BuildContext context) => new LoadingPage()
        });
  }
}
