import 'package:flutter/material.dart';
import 'package:rcade/constants/colors.dart';

class StartedOne extends StatefulWidget {
  const StartedOne({super.key});

  @override
  State<StartedOne> createState() => _StartedOneState();
}

class _StartedOneState extends State<StartedOne> {
  String _selectedOption = "Select Level";

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
              "Tell Us About Yourself",
              style: TextStyle(
                  color: fontColor, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Your Name',
                filled: true,
                fillColor: const Color(0xFFFEECF6),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFB3B3B3)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFB3B3B3)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFB3B3B3)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Age',
                filled: true,
                fillColor: const Color(0xFFFEECF6),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFB3B3B3)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFB3B3B3)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFB3B3B3)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Your Name',
                labelText: _selectedOption,
                filled: true,
                fillColor: const Color(0xFFFEECF6),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFB3B3B3)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFB3B3B3)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFB3B3B3)),
                ),
                suffixIcon: PopupMenuButton<String>(
                  itemBuilder: (BuildContext context) => [
                    const PopupMenuItem(
                      value: 'Beginner',
                      child: Text(
                        'Beginner',
                        style: TextStyle(color: Color(0xFF2C2A93)),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'Intermediate',
                      child: Text(
                        'Intermediate',
                        style: TextStyle(color: Color(0xFF2C2A93)),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'Advanced',
                      child: Text(
                        'Advanced',
                        style: TextStyle(color: Color(0xFF2C2A93)),
                      ),
                    ),
                  ],
                  onSelected: (String value) {
                    setState(() {
                      _selectedOption = value;
                    });
                  },
                  offset: const Offset(0, 40),
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Color(0xFFB3B3B3)),
                  ),
                ),
              ),
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
                "Next",
                style: TextStyle(color: fontColor, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
