// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../data/services/auth_service.dart';
import '../../logic/utils/shared_preferences.dart';

class SignupEmailScreen extends StatefulWidget {
  const SignupEmailScreen({super.key});

  @override
  State<SignupEmailScreen> createState() => _SignupEmailScreenState();
}

class _SignupEmailScreenState extends State<SignupEmailScreen> {
  final _authService = AuthService();

  late String _buttonText;
  late String _firstName;
  late String _lastName;
  late String _phoneNumber;
  late String _email;
  late String _password;
  late String _confirmPassword;

  @override
  void initState() {
    super.initState();
    _buttonText = 'Sign Up';
    _firstName = '';
    _lastName = '';
    _email = '';
    _password = '';
    _confirmPassword = "";
  }

  void _handleFirstNameChanged(String value) {
    setState(() {
      _firstName = value;
    });
  }

  void _handleLastNameChanged(String value) {
    setState(() {
      _lastName = value;
    });
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

  void _handleConfirmPasswordChanged(String value) {
    setState(() {
      _confirmPassword = value;
    });
  }

  void _handleSignUpPressed() async {
    if (_password != _confirmPassword || _password == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Password and Confirm Password must be same"),
        ),
      );
      return;
    }

    setState(() {
      _buttonText = "Creating your account!";
    });

    final response = await _authService.signup(
      _firstName,
      _lastName,
      _email,
      _password,
      _confirmPassword,
    );

    var token = json.decode(response.body)['token'];
    HelperFunctions.saveTokenSF(token);

    setState(() {
      _buttonText = "Sign Up";
    });

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("OTP Sent Successfully!"),
        ),
      );
      Navigator.of(context)
          .pushNamed('/otp-verification', arguments: _phoneNumber);
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
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create New Account',
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
              'Please fill up the details to create a new account',
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              "Full Name",
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
                hintText: 'Enter your first name',
              ),
              onChanged: _handleFirstNameChanged,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Phone Number",
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
                hintText: 'Enter your last name',
              ),
              onChanged: _handleLastNameChanged,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "E-Mail",
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
                hintText: 'Enter your email id',
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
                hintText: 'Enter password',
              ),
              obscureText: true,
              onChanged: _handlePasswordChanged,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Confirm Password",
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
                hintText: 'Enter password again',
              ),
              obscureText: true,
              onChanged: _handleConfirmPasswordChanged,
            ),
            const SizedBox(
              height: 25,
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: _handleSignUpPressed,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              child: Text(_buttonText),
            ),
          ],
        ),
      ),
    ));
  }
}
