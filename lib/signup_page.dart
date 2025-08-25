import 'package:flutter/material.dart';
import 'package:rahbarlar/loginpage.dart';
import '../services/local_storage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();

  final ismController = TextEditingController();
  final famController = TextEditingController();
  final emailController = TextEditingController();
  final parolController = TextEditingController();
  final confirmParolController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ro'yxatdan o'tish")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: ismController,
                decoration: InputDecoration(labelText: "Ism"),
                validator: (value) =>
                value == null || value.isEmpty
                    ? "Ismni kiritish kerak"
                    : null,
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: famController,
                decoration: InputDecoration(labelText: "Familya"),
                validator: (value) =>
                value == null || value.isEmpty
                    ? "Familyani kiritish kerak"
                    : null,
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Emailni kiritish kerak";
                  } else if (!value.endsWith("@gmail.com")) {
                    return "Email @gmail.com bilan tugashi kerak";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: parolController,
                decoration: InputDecoration(labelText: "Parol"),
                obscureText: true,
                validator: (value) =>
                value == null || value.isEmpty
                    ? "Parolni kiritish kerak"
                    : null,
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: confirmParolController,
                decoration: InputDecoration(labelText: "Parolni tasdiqlash"),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Parolni tasdiqlash kerak";
                  } else if (value != parolController.text) {
                    return "Parollar mos emas!";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );

                  if (_formKey.currentState!.validate()) {
                    await LocalStorage.saveUserData(
                      ism: ismController.text,
                      familya: famController.text,
                      email: emailController.text,
                      parol: parolController.text,
                    );

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Center(child: Text("Ro'yxatdan o'tdingiz!"))),
                    );
                  }
                },
                child: Text("Ro'yxatdan o'tish"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
