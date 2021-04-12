import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  Container build(context) {
    return Container(
      margin: EdgeInsets.all(7.0),
      child: TextField(
        keyboardType: TextInputType.name,
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
