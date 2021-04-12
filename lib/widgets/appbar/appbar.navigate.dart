import "package:flutter/material.dart";

class AppbarNavigate extends StatelessWidget {
  Container build(context) {
    return Container(
        padding: EdgeInsets.only(top: 25.0, right: 10, left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            this.title(),
            Row(children: [
              Icon(Icons.settings, color: Colors.grey[700]),
              Icon(Icons.more_vert_outlined, color: Colors.grey[700])
            ])
          ],
        ));
  }

  Text title() {
    return Text(" View your",
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
            fontFamily: "arial"));
  }
}
