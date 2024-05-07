import 'package:flutter/material.dart';
import 'package:quiz1/Home.dart'; // Import your home screen or any other screen you want to navigate to after the splash screen.

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splashScreen'; // Define route name for the splash screen

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate the splash screen
    Future.delayed(Duration(seconds: 4), () {
      // Navigate to the home screen after the splash screen duration
      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Placeholder widget for the splash screen
    return Scaffold(
      backgroundColor: Colors.yellow, // Set background color of the splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.ac_unit_outlined,size: 150), // Display your app logo or any other image
            SizedBox(height: MediaQuery.of(context).size.height * .2),
            CircularProgressIndicator(), // Show a loading indicator
          ],
        ),
      ),
    );
  }
}
