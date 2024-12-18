import 'package:flutter/material.dart';
import 'package:shoesy/ui/screens/home/home_screen.dart';
import 'package:shoesy/ui/screens/home/product_detail_screen.dart';
import 'package:shoesy/ui/screens/home/review_screen.dart';
import 'package:shoesy/ui/screens/shared/bottom_navbar.dart';
import 'package:shoesy/ui/screens/splash/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.light().copyWith(
        bottomNavigationBarTheme: BottomNavigationBarTheme.of(context).copyWith(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: const Color(0xFF101010),
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "/bottomNavBar": (context) => const BottomNavBar(),
      },
    );
  }
}
