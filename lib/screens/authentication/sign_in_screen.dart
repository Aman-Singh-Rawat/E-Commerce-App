import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/widgets/auth_input_fields.dart';
import 'package:shoesy/widgets/custom_button.dart';
import 'package:shoesy/widgets/social_button_bg.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isRemember = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  double _btnElevation = 0;

  @override
  void initState() {
    super.initState();

    _emailController.addListener(() {
      setState(() {});
    });

    _passwordController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  Color get btnColor {
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      _btnElevation = 0;
      return const Color(0xFF393939);
    } else {
      _btnElevation = 8;
      return const Color(0xFF101010);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              const SizedBox(height: 50),
              AuthInputFields(
                emailController: _emailController,
                passwordController: _passwordController,
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: 1.3,
                    child: Checkbox(
                      value: _isRemember,
                      checkColor: Colors.white,
                      activeColor: const Color(0xFF101010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _isRemember = value!;
                        });
                      },
                    ),
                  ),
                  Text(
                    "Remember me",
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF101010),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  onPressedCallback: () {},
                  btnText: "Sign in",
                  btnColor: btnColor,
                  btnElevation: _btnElevation,
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: Text(
                  "Forgot the password?",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF101010),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 50),
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
                    "or continue with",
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
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SocialButtonBg(
                      onCallback: () {},
                      socialBtnImage: "assets/images/ic_google.svg",
                      socialBtnName: "Google",
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: SocialButtonBg(
                      onCallback: () {},
                      socialBtnImage: "assets/images/ic_facebook.svg",
                      socialBtnName: "Facebook",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
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
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
