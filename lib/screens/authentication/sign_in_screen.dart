import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/widgets/email_pass_text_form_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              "Login to your Account",
              style: GoogleFonts.poppins(
                fontSize: 38,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 40),
            const EmailPassTextFormField(isEmail: true),
            const SizedBox(height: 20),
            const EmailPassTextFormField(isEmail: false),
          ],
        ),
      ),
    );
  }
}
