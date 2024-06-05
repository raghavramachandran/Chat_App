import 'package:chat_app/pages/loginpage.dart';
import 'package:chat_app/pages/newfile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

void add() {
  constant.add(Constant(
      id: '$idController', name: '$nameController', phone: $phoneController));
}

List<Constant> constant = [];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var phoneController;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 50),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'name'),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: idController,
              decoration: const InputDecoration(labelText: 'id'),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(labelText: 'phone'),
            ),
            const ElevatedButton(
              onPressed: add,
              child: Text('to add cllick'),
            ),
            Card(
              child: Column(
                children: [
                  Text(
                    '$nameController',
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    '$idController',
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
