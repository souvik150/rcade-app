import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class PhysicalActivity extends StatelessWidget {
  const PhysicalActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Periarthritis",
                  style: TextStyle(
                    color: fontColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "(Frozen Shoulder)",
                  style: TextStyle(
                      color: fontColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Symptoms",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: fontColor,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/started-two");
              },
              style: ElevatedButton.styleFrom(
                primary: primaryColor,
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 15,
                  left: 80,
                  right: 80,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Start Game",
                style: TextStyle(color: fontColor, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
