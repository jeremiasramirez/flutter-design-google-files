import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  LoadingPageState createState() => LoadingPageState();
}

class LoadingPageState extends State<LoadingPage> {
  void replaceToRoute(BuildContext context) {
    Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.pushReplacementNamed(context, "home");
    });
  }

  Widget build(context) {
    this.replaceToRoute(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: CircularProgressIndicator(
          color: Colors.orange[400],
        )),
      ),
    );
  }
}
