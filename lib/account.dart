import 'package:flutter/material.dart';
import 'package:rahbarlar/listtitle/appbarpage.dart';

class AccountPage extends StatelessWidget {
  final String title = "A k k o u n t";

  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBarPage(context, title)));
  }
}
