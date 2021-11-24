import 'package:flutter/material.dart';
import 'package:givelivly_beta/Screens/home_screen.dart';
import 'package:givelivly_beta/Screens/login_screen.dart';
import 'package:givelivly_beta/Routes/routes.dart';
import 'package:givelivly_beta/Screens/welcome_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const GiveLivly());

class GiveLivly extends StatelessWidget {
  const GiveLivly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GiveLivly',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.welcomeRoute,
      theme: ThemeData(
          textTheme: GoogleFonts.amiriTextTheme(
        Theme.of(context).textTheme,
      )),
      routes: {
        Routes.welcomeRoute: (context) => const WelcomeScreen(),
        Routes.homeRoute: (context) => const HomeScreen(),
        Routes.loginRoute: (context) => const LoginScreen(),
      },
    );
  }
}
