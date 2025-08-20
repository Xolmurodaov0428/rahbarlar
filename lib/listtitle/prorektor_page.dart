import 'package:flutter/material.dart';
import 'package:rahbarlar/leaderpage.dart';
import 'package:rahbarlar/listtitle/appbarpage.dart';
import 'leadercard.dart';

class ProrektorPage extends StatelessWidget {
  final String title = "P r o r e k t o r";

  const ProrektorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarPage(context, title),
        body: ListView.builder(
          itemCount: leaders.length,
          itemBuilder: (BuildContext context, int index) {
            final Leader leader = leaders[index];
            //if (leader.position == "Prorektor") {

            return leader.position == title.replaceAll(" ", "")
                ? LeaderCard(leader: leader,) //;
                // } else {
                // Bo‘sh widget qaytaramiz
                // return const SizedBox.shrink();
                : const SizedBox.shrink();

            // }
          },
        ),
      ),
    );
  }
}
