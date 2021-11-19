// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:givelivly_beta/Routes/Routes.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

// ignore: camel_case_types
class _Login_pageState extends State<Login_page> {
  String name = '';
  final _formKey = GlobalKey<FormState>();

  moveTohome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        OnChangedbutton = true;
      });
      await Future.delayed(const Duration(milliseconds: 500));
      await Navigator.pushNamed(context, Routes.homeRoute);
      setState(() {
        OnChangedbutton = false;
      });
    }
  }

  // ignore: non_constant_identifier_names
  bool OnChangedbutton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Image.asset(
              "assets/images/Undraw_image_art.png",
              fit: BoxFit.cover,
            ),
            Text("Welcome $name",
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 28.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Username",
                        hintText: "Enter Your Username",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        hintText: "Enter your Password",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password cannot be empty';
                        } else if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Material(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.circular(OnChangedbutton ? 50 : 8),
                      child: InkWell(
                          onTap: () => moveTohome(context),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            width: OnChangedbutton ? 50 : 120,
                            height: 50,
                            alignment: Alignment.center,
                            child: OnChangedbutton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: GoogleFonts.lato().fontFamily,
                                    ),
                                  ),
                          )),
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, "/home");
                    //   },
                    //   style: ButtonStyle(
                    //     backgroundColor: MaterialStateProperty.all(Colors.black),
                    //   ),
                    //   child: const Text("Login"),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
