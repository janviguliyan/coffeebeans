import 'package:coffeebeans/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 22, 16, 100),
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: const Text('CoffeeBeans'),
        elevation: 0.0,
        actions: [
          TextButton.icon(
            style: const ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.white)),
              onPressed: () async {
              await _auth.signOut();
              },
              icon: const Icon(Icons.person),
              label: const Text('Profile', style: TextStyle(color: Colors.white),),
          ),
        ],
      ),

    );
  }
}
