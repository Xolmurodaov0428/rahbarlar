import 'package:flutter/material.dart';
import 'package:rahbarlar/listtitle/appbarpage.dart';

class MaktabgachaPage extends StatelessWidget {
  const MaktabgachaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBarPage(context, "M a k t a b g a c h a"),
    ));
  }
}
