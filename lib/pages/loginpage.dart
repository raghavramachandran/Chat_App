import 'package:chat_app/pages/homepage.dart';
import 'package:chat_app/pages/newfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}


TextEditingController nameController = TextEditingController();
TextEditingController idController = TextEditingController();

TextEditingController login = TextEditingController();
TextEditingController password = TextEditingController();
final text = login.value.text;
final text2 = password.value.text;

class _LoginPageState extends State<LoginPage> {
  final Formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 80),
          child: Form(
            key: Formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Groupie",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: login,
                  decoration: const InputDecoration(labelText: 'login'),
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: password,
                  decoration: const InputDecoration(labelText: 'password'),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            const HomeScreen();
                          });
                        },
                        child: Text('login')),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text('new here?'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  validator() {
    if (text.isEmpty || text2.isEmpty) {
      return;
    } else {
      return const HomeScreen();
    }
  }
}
 var $phoneController = 1234;


