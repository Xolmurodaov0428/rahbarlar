import 'package:flutter/material.dart';
import 'appbarpage.dart';


class Tillar extends StatelessWidget {
  const Tillar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBarPage(context, "T i l l a r"),
      ),
    );
  }
}
