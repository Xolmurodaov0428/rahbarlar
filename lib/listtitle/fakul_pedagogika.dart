import 'package:flutter/material.dart';
import 'package:rahbarlar/leaderpage.dart';
import 'package:rahbarlar/listtitle/appbarpage.dart';
import 'leadercard.dart';

class PedagogikaPage extends StatelessWidget {
  const PedagogikaPage({super.key});

  final String title = "P e d a g o g i k a";
  final String dekan = "Pedagogika";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarPage(context, title),
        body: ListView.builder(
          itemCount: leaders.length,
          itemBuilder: (BuildContext context, int index) {
            final Leader leader = leaders[index];
            return leader.position.toLowerCase().contains(dekan.toLowerCase())
                ? LeaderCard(leader: leader)
                : const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
