import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
            'Forgot Password?',
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
            'Please enter your registered phone number',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            "Phone",
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your phone',
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
            ),
            child: const Text("Get OTP"),
          ),
        ],
      ),
    ));
  }
}
