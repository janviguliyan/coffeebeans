import 'package:flutter/material.dart';
import 'package:coffeebeans/services/auth.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();

  // text field state
  String email = " ";
  String password = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      // const Color.fromRGBO(35, 22, 16, 100),
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: const Text('Register to CoffeeBeans'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child:
        Form(
          child: Column(
            children: [
              const SizedBox(height: 20.0,),
              TextFormField(
                onChanged: (val) {
                  // change
                  setState(() => email = val);
                },
              ),
              const SizedBox(height: 20.0,),
              TextFormField(
                obscureText: true,

                // TextStyle(color: Colors.white,),
                onChanged: (val) {
                  // change
                  setState(() => password = val);

                },
              ),
              const SizedBox(height: 20.0,),
              ElevatedButton(
                  onPressed: () async {
                    print(email);
                    print(password);
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(246, 183, 132, 100))
                  ),
                  child: const Text('Register',
                    style: TextStyle(
                      color: Colors.brown,
                    ),
                  ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () async {
                      print('sign in');
                    },
                    child: const Text(
                      'Sign in',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
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
