import 'package:coffeebeans/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:coffeebeans/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {

    // return either home or authenticate widget
    // return Home();
    return Authenticate();
  }
}
