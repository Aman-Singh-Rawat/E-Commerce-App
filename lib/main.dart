import 'package:flutter/material.dart';
import 'package:shoesy/ui/screens/profile/fill_profile.dart';
import 'package:shoesy/ui/screens/shared/bottom_navbar.dart';
import 'package:shoesy/ui/screens/splash/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
        "/bottomNavBar": (context) => const BottomNavBar(),
      },
    ),
  );
}
