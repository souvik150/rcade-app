import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../components/scaling_button.dart';

class SpashScreen extends StatelessWidget {
  const SpashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(child: Image.asset("assets/images/logo.png")),
        const SizedBox(
          height: 40,
        ),
        ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [primaryColor, fontColor],
            stops: [0.0, 1.0],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ).createShader(bounds),
          child: const Text(
            'RCADE',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Rediscover physiotherapy",
          style: TextStyle(
              color: fontColor,
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        Text(
          " through games",
          style: TextStyle(
              color: fontColor,
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 40,
        ),
        ScalingButton(
          child: Text(
            'Play now',
            style: TextStyle(color: fontColor, fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/started-one');
          },
        ),
      ],
    ));
  }
}
