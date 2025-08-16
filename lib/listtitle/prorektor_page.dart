import 'package:flutter/material.dart';
import 'package:rahbarlar/listtitle/appbarpage.dart';

class ProrektorPage extends StatelessWidget {
  const ProrektorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBarPage(context, "P r o r e k t o r")),
    );
  }
}
