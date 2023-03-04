// ignore_for_file: use_build_context_synchronously, library_private_types_in_public_api

import 'dart:convert';

import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../data/services/auth_service.dart';
import '../../logic/utils/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _authService = AuthService();

  late String _buttonText;
  late String _email;
  late String _password;

  @override
  void initState() {
    super.initState();
    _buttonText = 'Login';
    _email = '';
    _password = '';
  }

  void _handleEmailNumberChanged(String value) {
    setState(() {
      _email = value;
    });
  }

  void _handlePasswordChanged(String value) {
    setState(() {
      _password = value;
    });
  }

  void _handleLoginPressed() async {
    setState(() {
      _buttonText = "Logging you in!";
    });

    final response = await _authService.login(_email, _password);

    var token = json.decode(response.body)['token'];
    HelperFunctions.saveTokenSF(token);
    HelperFunctions.saveUserLoggedInStatus(true);

    setState(() {
      _buttonText = "Login";
    });

    if (response.statusCode == 200) {
      Navigator.of(context).pushNamed('/home');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Some error occurred."),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                color: primaryTextColor.shade600,
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Please fill up the email and password to log into your account',
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              "Email",
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your email',
              ),
              onChanged: _handleEmailNumberChanged,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Password",
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your password',
              ),
              obscureText: true,
              onChanged: _handlePasswordChanged,
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/forgot-password');
              },
              child: const Text("Forgot Password ?"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _handleLoginPressed,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              child: Text(_buttonText),
            ),
          ],
        ),
      ),
    );
  }
}
