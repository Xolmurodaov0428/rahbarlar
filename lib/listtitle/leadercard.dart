import 'package:flutter/material.dart';
import 'package:rahbarlar/leaderpage.dart';
//import 'leader_model.dart'; // model faylingizni chaqiring

class LeaderCard extends StatelessWidget {
  final Leader leader; // Leader modelini parametr sifatida oladi

  const LeaderCard({super.key, required this.leader});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        top: 20,
        left: 20,
      ),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(25),
        child: Container(
          height: 300,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    leader.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Icon(Icons.broken_image, size: 50),
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(width: 20),

              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      leader.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    const SizedBox(height: 6),
                    Text("Lavozimi: ${leader.position}"),
                    const SizedBox(height: 6),
                    Text("Ilmiy darajasi: ${leader.degree}"),
                    const SizedBox(height: 6),
                    Text("Ta’lim: ${leader.education}"),
                    const SizedBox(height: 6),
                    Text("Ish tajribasi: ${leader.experience}"),
                    const SizedBox(height: 6),
                    Text("Mukofotlari: ${leader.awards}"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
