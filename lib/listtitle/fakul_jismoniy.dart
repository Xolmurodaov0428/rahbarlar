import 'package:flutter/material.dart';
import 'package:rahbarlar/listtitle/appbarpage.dart';

class JismoniyPage extends StatelessWidget {
  const JismoniyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBarPage(context, "J i s m o n i y")),
    );
  }
}
