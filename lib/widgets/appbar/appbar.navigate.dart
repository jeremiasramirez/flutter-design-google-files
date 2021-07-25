import "package:flutter/material.dart";
import 'package:folders_file/widgets/separated/separated.widget.dart';

class AppbarNavigate extends StatelessWidget {
  Container build(context) {
    return Container(
        padding: EdgeInsets.only(top: 3.0, right: 5, left: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            this.title(),
            Row(children: [
              Icon(Icons.settings, color: Colors.white),
              Separated(12, 0),
              Icon(Icons.more_vert_outlined, color: Colors.white)
            ])
          ],
        ));
  }

  Text title() {
    return Text(" View your",
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "arial"));
  }
}
