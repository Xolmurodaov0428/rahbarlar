import 'package:flutter/material.dart';
import 'package:rahbarlar/leaderpage.dart';
import 'package:rahbarlar/listtitle/appbarpage.dart';
import 'leadercard.dart';

class AniqvaTabiy extends StatelessWidget {
  final String title = "A n i q v a  T a b i y";
  final String dekan = "Aniq";

  const AniqvaTabiy({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarPage(context, title),
        body: ListView.builder(
          itemCount: leaders.length,
          itemBuilder: (BuildContext context, int index) {
            final Leader leader = leaders[index];

            return leader.position.toLowerCase().contains(dekan.toLowerCase(),)
                ? LeaderCard(leader: leader)
                : const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
