import 'package:flutter/material.dart';

class FloatingAdd extends StatelessWidget {
  FloatingActionButton build(context) {
    return FloatingActionButton(
        backgroundColor: Colors.blue[900],
        child: Icon(Icons.add),
        onPressed: () {});
  }

  FloatingActionButtonLocation location() {
    return FloatingActionButtonLocation.endFloat;
  }
}
