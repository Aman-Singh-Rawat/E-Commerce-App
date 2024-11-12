import 'package:flutter/material.dart';
import 'package:shoesy/ui/screens/shared/bottom_navbar.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const BottomNavBar(),
        "/bottomNavBar": (context) => const BottomNavBar(),
      },
    ),
  );
}
