import 'package:flutter/material.dart';
import 'package:quiz1/AliceCare/AliceCare.dart';
import 'package:quiz1/UserInfo/ForthIcon.dart';
import 'package:quiz1/Moody/Moody.dart';
import 'package:quiz1/Workout/Workout.dart';

List<Widget> tabs = [Moody(), WorkoutApp(), AliceCare(),  ForthIcon()];

class HomeScreen extends StatefulWidget {
  static String routeName = "homescreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,

        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedItemColor: const Color(0XFF027A48),
        unselectedItemColor: const Color(0XFF667085),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_gymnastics_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
      ),
      extendBody: true, // Keep the bottom navigation bar at the bottom of the screen.
    );
  }
}
