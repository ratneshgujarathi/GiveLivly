// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:givelivly_beta/Screens/LoginScreen.dart';
import 'package:givelivly_beta/widgets/drawer.dart';

// ignore: camel_case_types
class Home_screen extends StatelessWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(),
      ),
    );
  }
}
