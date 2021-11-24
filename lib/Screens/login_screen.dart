import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Stack(
              children: [Positioned(child: Image.asset("assets/Drawables/"))],
            )
          ],
        ),
      ),
    );
  }
}
