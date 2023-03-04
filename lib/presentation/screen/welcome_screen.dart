import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 125,
        ),
        Image.asset('assets/images/logo.png'),
        const SizedBox(
          height: 25,
        ),
        Text(
          "Already have an account?",
          style: TextStyle(
              color: primaryColor, fontWeight: FontWeight.w700, fontSize: 15),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/login');
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
            ),
            child: Text(
              "Login",
              style: TextStyle(
                color: fontColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          "New to RCADE? Sign up",
          style: TextStyle(
              color: primaryTextColor,
              fontWeight: FontWeight.w700,
              fontSize: 15),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: OutlinedButton.icon(
            onPressed: () {
              Navigator.of(context).pushNamed('/signup-email');
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
              side: BorderSide(color: themeColors), // set the border color here
            ),
            icon: Icon(
              Icons.email,
              color: fontColor,
              size: 24.0,
            ),
            label: Text(
              'Sign Up with Email',
              style: TextStyle(
                color: fontColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
