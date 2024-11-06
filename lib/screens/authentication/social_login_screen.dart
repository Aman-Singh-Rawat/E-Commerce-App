import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialLoginScreen extends StatelessWidget {
  const SocialLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/img_social_login.png",
              width: 200,
              height: 200,
            ),
          ),
          Text(
            "Let's you in",
            style: GoogleFonts.poppins(
              fontSize: 38,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
