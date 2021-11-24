// ignore: file_names
// ignore_for_file: sized_box_for_whitespace, file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Login_page extends StatelessWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset('assets/Drawables/Ellipse_26.png'),
              )
            ],
          )
        ],
      ),
    );
  }
}
