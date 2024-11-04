import 'dart:async';

import 'package:flutter/material.dart';

import '../onboarding/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigateAnotherScreen() {
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const IntroScreen(),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    navigateAnotherScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/images/img_splash.png",
                width: 100,
                height: 100,
              ),
            ),
            /*const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: CircularProgressIndicator(
                  color: Color(0xFFC2BEBE),
                  backgroundColor: Color(0xFF101010),
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
