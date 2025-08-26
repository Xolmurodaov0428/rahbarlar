import 'package:flutter/material.dart';
import 'package:rahbarlar/homepage.dart';
import 'package:rahbarlar/listtitle/appbarpage.dart';
import 'package:rahbarlar/loginpage.dart';
import 'package:rahbarlar/services/local_storage.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final String title = "A k k o u n t";
  Map<String, dynamic>? userData;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final data = await LocalStorage.getUserData();
    setState(() {
      userData = data;
    });
  }

  void _editField(String key, String currentValue) {
    TextEditingController controller = TextEditingController(text: currentValue);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Tahrirlash: $key"),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Yangi $key kiriting",
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Bekor qilish"),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.pop(context);
                if (controller.text.trim().isNotEmpty) {
                  userData![key] = controller.text.trim();
                  await LocalStorage.saveUserData(
                    ism: userData!["ism"],
                    familya: userData!["familya"],
                    email: userData!["email"],
                    parol: userData!["parol"],
                  );
                  setState(() {});
                }
              },
              child: Text("Saqlash"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarPage(context, title),
        body: userData == null
            ? Center(child: CircularProgressIndicator())
            : Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person, size: 80, color: Colors.deepPurpleAccent),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "${userData!["ism"]} ${userData!["familya"]}",
                        style: TextStyle(fontSize: 26, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${userData!["email"]}",
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                      SizedBox(height: 30),

                      _buildInfoCard(Icons.person, "Ism", userData!["ism"], "ism"),
                      _buildInfoCard(Icons.person_outline, "Familya", userData!["familya"], "familya"),
                      _buildInfoCard(Icons.email, "Email", userData!["email"], "email"),
                      _buildInfoCard(Icons.lock, "Parol", userData!["parol"], "parol"),

                      SizedBox(height: 40),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                        icon: Icon(Icons.logout),
                        label: Text("Chiqish"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  Widget _buildInfoCard(IconData icon, String title, String value, String key) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white.withOpacity(0.3)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white, size: 28),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(color: Colors.white70, fontSize: 14)),
                  SizedBox(height: 5),
                  Text(value, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.edit, color: Colors.white),
            onPressed: () => _editField(key, value),
          ),
        ],
      ),
    );
  }
}
