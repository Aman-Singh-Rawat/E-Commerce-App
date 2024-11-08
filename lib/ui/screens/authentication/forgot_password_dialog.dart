import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shared/bottom_navbar.dart';

class ForgotPasswordDialog extends StatelessWidget {
  const ForgotPasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        '/bottomNavBar', // Route to your BottomNavBar screen
            (Route<dynamic> route) => false, // This will remove all previous screens
      );
    });

    var container = Container(
      width: 20,
      height: 20,
      decoration: const BoxDecoration(
        color: Color(0xFF101010),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );

    return Dialog(
      backgroundColor: Colors.white,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: SizedBox(
        height: 480,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Positioned(
                    left: 50,
                    top: 15,
                    width: 20,
                    height: 20,
                    child: container,
                  ),
                  Positioned(
                    left: 120,
                    top: 15,
                    width: 8,
                    height: 8,
                    child: container,
                  ),
                  Positioned(
                    left: 210,
                    top: 30,
                    width: 15,
                    height: 15,
                    child: container,
                  ),
                  Positioned(
                    left: 209,
                    top: 90,
                    width: 7,
                    height: 7,
                    child: container,
                  ),
                  Positioned(
                    left: 213,
                    top: 140,
                    width: 7,
                    height: 7,
                    child: container,
                  ),
                  Positioned(
                    left: 180,
                    top: 170,
                    width: 3,
                    height: 3,
                    child: container,
                  ),
                  Positioned(
                    left: 120,
                    top: 180,
                    width: 7,
                    height: 7,
                    child: container,
                  ),
                  Positioned(
                    left: 50,
                    top: 130,
                    width: 10,
                    height: 10,
                    child: container,
                  ),
                  Positioned(
                    left: 40,
                    top: 80,
                    width: 2,
                    height: 2,
                    child: container,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 35,
                        bottom: 35,
                      ),
                      child: CircleAvatar(
                        radius: 65,
                        backgroundColor: const Color(0xFF101010),
                        child: Image.asset(
                          "assets/images/img_shield.png",
                          width: 48,
                          height: 48,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                "Congratulations!",
                style: GoogleFonts.poppins(
                  color: const Color(0xFF101010),
                  fontWeight: FontWeight.w600,
                  fontSize: 21,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Your account is ready to use. You will be redirected to the Home page in a few seconds.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF101010),
                ),
              ),
              const SizedBox(height: 30),
              const CircularProgressIndicator(
                color: Color(0xFF101010),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
