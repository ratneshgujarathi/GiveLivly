// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:givelivly_beta/Screens/LoginScreen.dart';
import 'package:givelivly_beta/widgets/drawer.dart';

// ignore: camel_case_types
class Home_screen extends StatelessWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black, // change the color of the text
        backgroundColor: Colors.white10, // change the color of the background
        elevation: 0.0, // remove the shadow
        title: const Text(
          "Givelivly",
          style: TextStyle(fontSize: 16),
        ),
      ),
      drawer: const CustomDrawer(),
      body: Material(
        child: Center(
          child: Material(
            elevation: 1.0,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go back"),
                style: ButtonStyle(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
