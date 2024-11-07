import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/screens/authentication/forgot_password_otp.dart';
import 'package:shoesy/screens/authentication/sign_in_screen.dart';
import 'package:shoesy/widgets/custom_button.dart';

import '../../widgets/forgot_password_type.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool _flag = true;

  final BoxDecoration _selectedDecoration = BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(25)),
    border: Border.all(
      color: const Color(0xFF101010),
      width: 2,
    ),
  );

  final BoxDecoration _unSelectedDecoration = BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(25)),
    border: Border.all(
      color: const Color(0xFFF5F5F5),
      width: 1,
    ),
  );

  void navigateOtpScreen() {
    if (_flag) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ForgotPasswordOtp(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Forgot Password",
          style: GoogleFonts.poppins(
            color: const Color(0xFF101010),
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/img_forgot_password.png",
                        width: 300,
                        height: 300,
                      ),
                    ),
                    Text(
                      "Select which contact details should we use to reset your password",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF101010),
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Container(
                      decoration:
                          _flag ? _selectedDecoration : _unSelectedDecoration,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (!_flag) {
                              _flag = !_flag;
                            }
                          });
                        },
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: const ForgotPasswordType(
                          imagePath: "assets/images/img_message.png",
                          passwordTypeTextVia: "via SMS:",
                          passwordTypeVia: "+91 761*****67",
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration:
                          !_flag ? _selectedDecoration : _unSelectedDecoration,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (_flag) {
                              _flag = !_flag;
                            }
                          });
                        },
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: const ForgotPasswordType(
                          passwordTypeTextVia: "via Email:",
                          passwordTypeVia: "ama****t@gmail.com",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                onPressedCallback: navigateOtpScreen,
                btnText: "Continue",
                btnColor: const Color(0xFF101010),
                btnElevation: 8,
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
