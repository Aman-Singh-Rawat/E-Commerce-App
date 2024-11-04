import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/screens/onboarding/onboarding_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    navigateOnboardingScreen(); // This function navigate to another screen
  }

  // Here this code navigate to another screen
  void navigateOnboardingScreen() {
    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // this is intro image which taken full width and height
          Image.asset(
            "assets/images/img_welcome.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                //this gradient for bottom text visible properly 😅
                gradient: LinearGradient(
                  colors: [
                    Colors.black54.withAlpha(2),
                    Colors.black.withAlpha(7),
                    Colors.black54,
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  stops: const [
                    0.0,
                    0.5,
                    1.0,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 200,
                  bottom: 50,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Welcome to 👋",
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Evira",
                      style: GoogleFonts.poppins(
                        fontSize: 75,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "The best e-commerce app of the century \nfor your daily needs!.",
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
