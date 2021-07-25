import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FloatingAdd extends StatelessWidget {
  BounceInUp build(context) {
    return BounceInUp(
        delay: Duration(milliseconds: 1500),
        child: FloatingActionButton(
            backgroundColor: Colors.blue[900],
            child: Icon(Icons.add),
            onPressed: () {}));
  }

  FloatingActionButtonLocation location() {
    return FloatingActionButtonLocation.endFloat;
  }
}
