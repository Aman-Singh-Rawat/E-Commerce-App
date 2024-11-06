import 'package:flutter/material.dart';
import 'package:shoesy/screens/authentication/sign_in_screen.dart';
import 'package:shoesy/screens/authentication/social_login_screen.dart';
import 'package:shoesy/screens/splash/splash_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SocialLoginScreen(),
    ),
  );
}
