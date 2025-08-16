import 'package:flutter/material.dart';
import 'appbarpage.dart';

class AniqvaTabiy extends StatelessWidget {
  const AniqvaTabiy({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBarPage(context, "A n i q v a  T a b i y"),
      ),
    );
  }
}
