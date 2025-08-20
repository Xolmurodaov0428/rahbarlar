import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rahbarlar/account.dart';
import 'package:rahbarlar/listtitle/prorektor_page.dart';
import 'listtitle/leaderspage.dart';
import 'listtitle/rektor_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<IconData> _icon = [Icons.school, Icons.school, Icons.people_alt];

  final List<String> _child = [
    "Rektor",
    "Prorektor",
    "Dekanlar va Zamdekanlar",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("B O' L I M L A R")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),

          // Bunga qo'shimcha bita if bo'ladi birorbir xabar kelsa icon o'zgaradigan qilinadi
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
        backgroundColor: Colors.deepPurpleAccent,
        iconTheme: IconThemeData(color: Colors.white),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurpleAccent),
              child: Row(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Sh Xolmurodov"), Text("+998904131263")],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle_sharp),
              title: Text("Akkaunt"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_sharp),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.contact_support_sharp),
              title: Text("Qo'llab-quvatlash markazi"),
            ),
            ListTile(
              leading: Icon(Icons.insert_drive_file),
              title: Text("Ilova haqida"),
            ),
          ],
        ),
      ),

      // Home
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                decoration: MyShadowBoxDecoration.defaultShadow(),
                height: 100,
                width: 5000,
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
                      MaterialPageRoute(builder: (context) => RektorPage()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(_icon[0], color: Colors.black, size: 40),
                      SizedBox(width: 20),
                      Text(
                        _child[0],
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: MyShadowBoxDecoration.defaultShadow(),
                height: 100,
                width: 5000,
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
                      MaterialPageRoute(builder: (context) => ProrektorPage()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(_icon[1], color: Colors.black, size: 40),
                      SizedBox(width: 20),
                      Text(
                        _child[1],
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: MyShadowBoxDecoration.defaultShadow(),
                height: 100,
                width: 5000,
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
                      MaterialPageRoute(builder: (context) => LeaderPage()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(_icon[2], color: Colors.black, size: 40),
                      SizedBox(width: 20),
                      Text(
                        _child[2],
                        style: TextStyle(fontSize: 20, color: Colors.black),
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

class MyShadowBoxDecoration {
  static BoxDecoration defaultShadow() {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade500,
          offset: const Offset(4.0, 4.0),
          blurRadius: 15.0,
          spreadRadius: 1.0,
        ),
        BoxShadow(
          color: Colors.white,
          offset: const Offset(-4.0, -4.0),
          blurRadius: 15,
          spreadRadius: 1,
        ),
      ],
    );
  }
}
