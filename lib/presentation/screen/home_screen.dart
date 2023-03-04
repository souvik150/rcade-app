import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'game_screens/create_game_screen.dart';
import 'game_screens/game_screen.dart';
import 'user_profile_screens/view_profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  final List<Widget> screeens = [
    const GamesScreen(),
    const CreateGameScreen(),
    const ViewProfileScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const GamesScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: themeColors,
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              currentScreen = const CreateGameScreen();
              currentTab = 2;
            });
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const GamesScreen();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? themeColors : Colors.grey,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                              color:
                                  currentTab == 0 ? themeColors : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const ViewProfileScreen();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: currentTab == 1 ? themeColors : Colors.grey,
                        ),
                        Text(
                          'View Profile',
                          style: TextStyle(
                              color:
                                  currentTab == 1 ? themeColors : Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
