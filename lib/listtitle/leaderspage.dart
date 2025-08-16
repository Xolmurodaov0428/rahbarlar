import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rahbarlar/homepage.dart';
import 'package:rahbarlar/listtitle/appbarpage.dart';
import 'fakul_aniqfanlar.dart';
import 'fakul_jismoniy.dart';
import 'fakul_maktabgacha.dart';
import 'fakul_pedagogika.dart';
import 'fakul_tillar.dart';

class LeaderPage extends StatefulWidget {
  const LeaderPage({super.key});

  @override
  State<LeaderPage> createState() => _LeaderPageState();
}

class _LeaderPageState extends State<LeaderPage> {
  final List<String> _fakul = [
    "Aniq va tabiiy fanlar fakulteti",
    "Tillar fakulteti",
    "Jismoniy madaniyat fakulteti",
    "Maktabgacha va boshlang‘ich ta’lim fakulteti",
    "Pedagogika va ijtimoiy fanlar fakulteti",
    "Harbiy ta’lim fakulteti",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Center(child: Text("F a k u l t e t l a r")),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
          backgroundColor: Colors.deepPurpleAccent,
          iconTheme: IconThemeData(color: Colors.white),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 5000,
                  decoration: MyShadowBoxDecoration.defaultShadow(),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AniqvaTabiy()),
                      );
                    },
                    child: Text(
                      _fakul[0],
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 5000,
                  decoration: MyShadowBoxDecoration.defaultShadow(),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Tillar()),
                      );
                    },
                    child: Text(
                      _fakul[1],
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 5000,
                  decoration: MyShadowBoxDecoration.defaultShadow(),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => JismoniyPage()),
                      );
                    },
                    child: Text(
                      _fakul[2],
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 5000,
                  decoration: MyShadowBoxDecoration.defaultShadow(),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MaktabgachaPage()),
                      );
                    },
                    child: Text(
                      _fakul[3],
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 5000,
                  decoration: MyShadowBoxDecoration.defaultShadow(),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => PedagogikaPage()),
                      );
                    },
                    child: Text(
                      _fakul[4],
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 5000,
                  decoration: MyShadowBoxDecoration.defaultShadow(),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LeaderPage()),
                      );
                    },
                    child: Text(
                      _fakul[5],
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
