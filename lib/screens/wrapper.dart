import 'package:coffeebeans/models/user.dart';
import 'package:coffeebeans/screens/authenticate/authenticate.dart';
import 'package:coffeebeans/screens/authenticate/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:coffeebeans/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<MyUser?>(context);
    print(user);
    // return either home or authenticate widget
    if(user == null){
      return const Authenticate();
    } else {
      return Home();
    }
  }
}
