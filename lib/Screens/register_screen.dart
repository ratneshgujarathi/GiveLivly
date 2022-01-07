// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:givelivly_beta/Screens/home_screen.dart';
import 'package:givelivly_beta/Screens/login_screen.dart';

import 'package:givelivly_beta/Screens/register_screen.dart';
import 'package:givelivly_beta/Themes/themes_.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  GlobalKey<FormState> _key = new GlobalKey<FormState>();

  // final _auth = FirebaseAuth.instance;
  // String _email, _password;
  // try {
  //       final newUser = await _auth.createUserWithEmailAndPassword(
  //       email: email, password: password);
  //       if (newUser != null) {
  //           Navigator.push(context,
  //                                   MaterialPageRoute(
  //                                                     builder: (context) => LoginScreen()),
  //                                                 );
  //         }
  // }
  // catch (e)
  // {
  //   print(e);
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Material(
          child: Container(
            height: size.height,
            width: size.width,
            color: ColorsDesign.lightColor,
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.44,
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
                        top: size.height * 0.20,
                        right: size.width * 0.12,
                        child: Text(
                          "Account",
                          style: TextStyle(
                            fontSize: 48,
                            fontFamily: GoogleFonts.amiri().fontFamily,
                            color: ColorsDesign.lightColor,
                            shadows: [
                              const Shadow(
                                blurRadius: 10,
                                color: ColorsDesign.darkColor,
                                offset: Offset(3, 4),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: size.height * 0.17,
                        right: size.width * 0.1,
                        child: Text(
                          "Create",
                          style: TextStyle(
                            fontSize: 36,
                            fontFamily: GoogleFonts.amiri().fontFamily,
                            color: ColorsDesign.lightColor,
                            shadows: [
                              const Shadow(
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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: Form(
                    key: _key,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          // controller: TextEditingController(text: _email),
                          decoration: InputDecoration(
                            labelText: "Email",
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
                          validator: (value) => value!.isEmpty
                              ? 'Please enter your password'
                              : null,
                          decoration: InputDecoration(
                            labelText: "Password",
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
                            if (_key.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            }
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: ColorsDesign.darkBluishColor,
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: ColorsDesign.darkBluishColor,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(
                                  Icons.arrow_forward,
                                  size: 35,
                                  color: ColorsDesign.lightColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SignInButton(
                          Buttons.Facebook,
                          onPressed: () {},
                        ),
                        SignInButton(
                          Buttons.GoogleDark,
                          onPressed: () {},
                        ),
                        Row(
                          children: [
                            const Text(
                              "Dont Have Account ?",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: ColorsDesign.darkBluishColor),
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: ColorsDesign.darkBluishColor,
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
      ),
    );
  }
}
