import 'package:flutter/material.dart';
import 'package:rahbarlar/listtitle/appbarpage.dart';

class RektorPage extends StatelessWidget {
  const RektorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarPage(context, "R e k t o r"),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            clipBehavior: Clip.none, // soyani kesmasligi uchun
            children: [
              Material(
                elevation: 10, // boxShadow o‘rnida
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            "https://picsum.photos/seed/picsum/200/300",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Ma'murov Bahodir Baxshulloyevich",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            SizedBox(height: 6),
                            Text(
                              "Lavozimi: Rektor",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            SizedBox(height: 6),
                            Text(
                              "I"
                                  ""
                                  ""
                                  ""
                                  ""
                                  ""
                                  ""
                                  ""
                                  "lmiy darajasi: PhD, dotsent",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            SizedBox(height: 6),
                            Text(
                              "Ta’lim: Toshkent Davlat Universiteti, 2001-yil",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            SizedBox(height: 6),
                            Text(
                              "Ish tajribasi: 2005-yildan buyon ta’lim tizimida faoliyat yuritadi",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            SizedBox(height: 6),
                            Text(
                              "Mukofotlari: “Mehnat shuhrati” ordeni (2020)",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ],

                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
