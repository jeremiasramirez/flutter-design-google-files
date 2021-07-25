import 'package:flutter/material.dart';
import 'package:folders_file/widgets/separated/separated.widget.dart';

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
          fileImage(url),
          Separated(0, 14),
          titleCard(),
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

Image fileImage(String url) {
  return Image(
    image: AssetImage(url),
    width: 40.0,
    height: 40.0,
  );
}
