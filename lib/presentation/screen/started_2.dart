import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class StartedTwo extends StatefulWidget {
  const StartedTwo({super.key});

  @override
  State<StartedTwo> createState() => _StartedTwoState();
}

class _StartedTwoState extends State<StartedTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 120, left: 30, right: 30),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Ailments",
              style: TextStyle(
                  color: fontColor, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFFEECF6),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(color: Color(0xFFB3B3B3)),
                      ),
                    ),
                    child: const Text(
                      'Carpel Tunnel Syndrome (CTS)',
                      style: TextStyle(
                          color: Color(0xFF2C2A93),
                          fontSize: 16,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/physical-activity');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFFEECF6),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(color: Color(0xFFB3B3B3)),
                      ),
                    ),
                    child: const Text(
                      'Periarthritis (Frozen Shoulder)',
                      style: TextStyle(
                          color: Color(0xFF2C2A93),
                          fontSize: 16,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFFEECF6),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(color: Color(0xFFB3B3B3)),
                      ),
                    ),
                    child: const Text(
                      'Neck Pain',
                      style: TextStyle(
                          color: Color(0xFF2C2A93),
                          fontSize: 16,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFFEECF6),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(color: Color(0xFFB3B3B3)),
                      ),
                    ),
                    child: const Text(
                      'Post-Stroke Mobility Issues',
                      style: TextStyle(
                          color: Color(0xFF2C2A93),
                          fontSize: 16,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFFEECF6),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(color: Color(0xFFB3B3B3)),
                      ),
                    ),
                    child: const Text(
                      'Any Other',
                      style: TextStyle(
                          color: Color(0xFF2C2A93),
                          fontSize: 16,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFFEECF6),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(color: Color(0xFFB3B3B3)),
                      ),
                    ),
                    child: const Text(
                      'None',
                      style: TextStyle(
                          color: Color(0xFF2C2A93),
                          fontSize: 16,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
