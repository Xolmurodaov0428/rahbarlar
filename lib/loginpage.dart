import 'package:flutter/material.dart';
import 'package:rahbarlar/homepage.dart';
import 'package:rahbarlar/services/local_storage.dart';
import 'package:rahbarlar/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHidden = true;

  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              // Xush kelibsiz
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Xush kelibsiz!",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      Text(
                        "Iltimos tizimga kirish uchun ma'lumotlaringizni kiriting",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Login
              TextField(
                controller: _loginController,
                decoration: InputDecoration(
                  labelText: "Login",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20),

              // Parol
              TextField(
                controller: _passwordController,
                obscureText: _isHidden,
                decoration: InputDecoration(
                  labelText: "Parol",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isHidden ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isHidden = !_isHidden;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Kirish
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.deepPurpleAccent,
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    final userData = await LocalStorage.getUserData();

                    if (userData.isNotEmpty) {
                      final savedLogin = userData["email"];
                      final savedPassword = userData["parol"];

                      if (_loginController.text == savedLogin &&
                          _passwordController.text == savedPassword) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Center(child: Text('Login yoki parol xato'))),
                        );
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Center(child: Text('Foydalanuvchi topilmadi'))),
                      );
                    }
                  },
                  child: Text("Kirish", style: TextStyle(color: Colors.white)),
                ),
              ),

              // Akkaunt qo'shish
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Akkauntingiz yo'qmi?"),
                  TextButton(
                    child: Text(
                      "Ro'yxatdan o'tish",
                      style: TextStyle(color: Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
