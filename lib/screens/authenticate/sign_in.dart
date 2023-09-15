import 'package:coffeebeans/screens/authenticate/register.dart';
import 'package:coffeebeans/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
        title: const Text('Sign in to CoffeeBeans'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              TextFormField(
                onChanged: (val) {
                  // change
                  setState(() => email = val);
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextFormField(
                obscureText: true,

                // TextStyle(color: Colors.white,),
                onChanged: (val) {
                  // change
                  setState(() => password = val);
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () async {
                  print(email);
                  print(password);
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(246, 183, 132, 100))),
                child: const Text(
                  'Sign in',
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
                    "Don't have an account? ",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () async {
                      print('sign up');
                    },
                    child: const Text(
                      'Sign up',
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

// onPressed: () async {
//   // print('signed in');
//  dynamic result = await _auth .signInAnon();
//  if (result == null){
//    print('error signed in');
//  } else{
//    print('signed in');
//    print(result.uid);
//  }
