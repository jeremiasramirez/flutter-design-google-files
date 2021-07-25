import 'package:flutter/material.dart';
// import 'package:folders_file/widgets/separated/separated.widget.dart';

import 'card.widget.dart';

class ContainerFiles extends StatelessWidget {
  Widget build(context) {
    return Table(children: [
      TableRow(
        children: [
          card("assets/images/excel.png"),
          card("assets/images/pdf.png"),
          card("assets/images/powerpoint.png")
        ],
      ),
      TableRow(children: [
        card("assets/images/excel.png"),
        card("assets/images/photoshop.png"),
        card("assets/images/powerpoint.png")
      ]),
      TableRow(children: [
        card("assets/images/excel.png"),
        card("assets/images/word.png"),
        card("assets/images/powerpoint.png")
      ])
    ]);
  }
}
