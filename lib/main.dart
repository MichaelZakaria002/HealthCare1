import 'package:flutter/material.dart';
import 'package:quiz1/AliceCare/AliceCare.dart';
import 'package:quiz1/Home.dart';
import 'package:quiz1/Moody/Moody.dart';
import 'package:quiz1/SplashScreen.dart';
import 'package:quiz1/Workout/Workout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          Moody.routeName: (_) => Moody(),
          WorkoutApp.routeName: (_) => WorkoutApp(),
          AliceCare.routeName: (_) => WorkoutApp(),
          HomeScreen.routeName: (_) => HomeScreen(),
          SplashScreen.routeName: (_) => SplashScreen()
        },
        initialRoute: SplashScreen.routeName
    );
  }
}
