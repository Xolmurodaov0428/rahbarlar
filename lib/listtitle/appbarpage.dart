import 'package:flutter/material.dart';

PreferredSizeWidget AppBarPage(BuildContext context, String title) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(color: Colors.white),
    ),
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.search),
      )
    ],
    backgroundColor: Colors.deepPurpleAccent,
    iconTheme: IconThemeData(color: Colors.white),
  );
}
