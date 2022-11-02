import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../constant/color.dart';
import '../translations/local_keys.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _currentIndex = 0;
  List pages = const [
    HomePage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.welcome.tr()),
        centerTitle: true,
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.black26,
        currentIndex: _currentIndex,
        elevation: 5,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            activeIcon: Icon(Icons.map),
            label: 'Map',
          ),

        ],
      ),
    );
  }
}