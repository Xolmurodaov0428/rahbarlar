import 'package:flutter/material.dart';
import 'package:rahbarlar/listtitle/appbarpage.dart';
import 'package:rahbarlar/services/local_storage.dart';

class AccountPage extends StatelessWidget {
  final String title = "A k k o u n t";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarPage(context, title),
        body: FutureBuilder<Map<String, dynamic>>(
          future: LocalStorage.getUserData(), // async chaqirish
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text("Ma'lumot topilmadi"));
            }
            final userData = snapshot.data!;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Ism: ${userData["ism"]}"),
                Text("Familya: ${userData["familya"]}"),
                Text("Email: ${userData["email"]}"),
              ],
            );
          },
        ),
      ),
    );
  }
}
