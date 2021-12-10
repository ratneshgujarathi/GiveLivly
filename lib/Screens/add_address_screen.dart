import 'package:flutter/material.dart';
import 'package:givelivly_beta/Screens/home_screen.dart';

import 'package:givelivly_beta/Themes/themes_.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Material(
        child: Container(
          height: size.height,
          width: size.width,
          color: ColorsDesign.lightColor,
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
                        "Details!",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.amiri().fontFamily,
                          color: ColorsDesign.lightColor,
                          shadows: const [
                            Shadow(
                              blurRadius: 10,
                              color: ColorsDesign.darkColor,
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
                        "Enter",
                        style: TextStyle(
                          fontSize: 48,
                          fontFamily: GoogleFonts.amiri().fontFamily,
                          color: ColorsDesign.lightColor,
                          shadows: const [
                            Shadow(
                              blurRadius: 10,
                              color: ColorsDesign.darkColor,
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
                          labelText: "What should we call you?",
                          labelStyle: TextStyle(
                            fontSize: 24,
                            fontFamily: GoogleFonts.amiri().fontFamily,
                            fontWeight: FontWeight.bold,
                            color: ColorsDesign.darkBluishColor,
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: ColorsDesign.darkBluishColor,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: ColorsDesign.darkBluishColor,
                            ),
                          ),
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Number we should call you on?",
                          labelStyle: TextStyle(
                            fontSize: 24,
                            fontFamily: GoogleFonts.amiri().fontFamily,
                            fontWeight: FontWeight.bold,
                            color: ColorsDesign.darkBluishColor,
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: ColorsDesign.darkBluishColor,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: ColorsDesign.darkBluishColor,
                            ),
                          ),
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText:
                              "Where should we come to pick up your kindness?",
                          labelStyle: TextStyle(
                            fontSize: 24,
                            fontFamily: GoogleFonts.amiri().fontFamily,
                            fontWeight: FontWeight.bold,
                            color: ColorsDesign.darkBluishColor,
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: ColorsDesign.darkBluishColor,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: ColorsDesign.darkBluishColor,
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
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
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
