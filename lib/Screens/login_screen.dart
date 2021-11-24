// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:givelivly_beta/Screens/home_screen.dart';

import 'package:givelivly_beta/Screens/register_screen.dart';
import 'package:givelivly_beta/Themes/themes_.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Material(
        child: Container(
          height: size.height,
          width: size.width,
          color: ColorsData.lightColor,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.45,
                child: Stack(
                  children: [
                    Positioned(
                      top: size.height * 0,
                      right: size.width * 0,
                      child: Image.asset("assets/Drawables/Ellipse_26.png"),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/Drawables/Subtract.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.2,
                      left: size.width * 0.12,
                      child: Text(
                        "Back",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.amiri().fontFamily,
                          color: ColorsData.lightColor,
                          shadows: [
                            const Shadow(
                              blurRadius: 10,
                              color: ColorsData.darkColor,
                              offset: Offset(3, 4),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.13,
                      left: size.width * 0.1,
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: 48,
                          fontFamily: GoogleFonts.amiri().fontFamily,
                          color: ColorsData.lightColor,
                          shadows: [
                            const Shadow(
                              blurRadius: 10,
                              color: ColorsData.darkColor,
                              offset: Offset(3, 3),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            fontSize: 24,
                            fontFamily: GoogleFonts.amiri().fontFamily,
                            fontWeight: FontWeight.bold,
                            color: ColorsData.darkBluishColor,
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: ColorsData.darkBluishColor,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: ColorsData.darkBluishColor,
                            ),
                          ),
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontSize: 24,
                            fontFamily: GoogleFonts.amiri().fontFamily,
                            fontWeight: FontWeight.bold,
                            color: ColorsData.darkBluishColor,
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: ColorsData.darkBluishColor,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: ColorsData.darkBluishColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: ColorsData.darkBluishColor,
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: ColorsData.darkBluishColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Icon(
                                Icons.arrow_forward,
                                size: 35,
                                color: ColorsData.lightColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Dont Have Account ?",
                            style: TextStyle(
                                fontSize: 18,
                                color: ColorsData.darkBluishColor),
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: ColorsData.darkBluishColor,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
