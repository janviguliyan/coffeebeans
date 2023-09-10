import 'package:coffeebeans/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(35, 22, 16, 100),
      appBar: AppBar(
        backgroundColor: Colors.brown[300],
        elevation: 0.0,
        title: Text('Sign in to CoffeeBeans'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(
            onPressed: () async {
              // print('signed in');
             dynamic result = await _auth .signInAnon();
             if (result == null){
               print('error signed in');
             } else{
               print('signed in');
               print(result.uid);
             }
            },
            child: Text('Sign in anon!')),
      ),
    );
  }
}
