import 'package:flutter/material.dart';
import 'package:rahbarlar/listtitle/appbarpage.dart';

class PedagogikaPage extends StatelessWidget {
  const PedagogikaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBarPage(context, "P e d a g o g i k a")),
    );
  }
}
