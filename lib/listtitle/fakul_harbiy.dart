import 'package:flutter/material.dart';
import 'package:rahbarlar/listtitle/appbarpage.dart';

class HarbiyPage extends StatelessWidget {
  const HarbiyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBarPage(context, "H a r b i y")),
    );
  }
}
