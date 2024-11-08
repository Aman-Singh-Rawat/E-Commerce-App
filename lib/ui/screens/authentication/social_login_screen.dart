import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/ui/screens/authentication/sign_in_screen.dart';
import 'package:shoesy/widgets/social_custom_button.dart';
import '../../../widgets/custom_button.dart';

class SocialLoginScreen extends StatelessWidget {
  const SocialLoginScreen({super.key});

  void openSignInScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SignInScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/img_social_login.png",
                  width: 280,
                  height: 280,
                ),
              ),
              Text(
                "Let's you in",
                style: GoogleFonts.poppins(
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              SocialCustomButton(
                onCallback: () {},
                socialBtnImage: "assets/images/ic_google.svg",
                socialBtnName: "Continue with Google",
              ),
              const SizedBox(height: 15),
              SocialCustomButton(
                onCallback: () {},
                socialBtnImage: "assets/images/ic_facebook.svg",
                socialBtnName: "Continue with Facebook",
              ),
              const SizedBox(height: 15),
              SocialCustomButton(
                onCallback: () {},
                socialBtnImage: "assets/images/ic_apple.svg",
                socialBtnName: "Continue with Apple",
              ),
              const SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 2,
                      color: const Color(0xFFF5F5F5),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    "or",
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF686868),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      height: 2,
                      color: const Color(0xFFF5F5F5),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  onPressedCallback: () {
                    openSignInScreen(context);
                  },
                  btnText: "Sign in with password",
                  btnColor: const Color(0xFF101010),
                  btnElevation: 8,
                ),
              ),
              const SizedBox(height: 30),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't have an account? ",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF686868),
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: "Sign up",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF101010),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("hello");
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
