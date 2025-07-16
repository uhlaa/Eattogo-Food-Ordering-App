import 'package:eattogo_food_app/homeScreen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 3 seconds then navigate to HomeScreen
    Timer(const Duration(seconds: 3), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Customize background if needed
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 106,
              // height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 10),
            Text(
              "Eat fast, Go fresh.",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
