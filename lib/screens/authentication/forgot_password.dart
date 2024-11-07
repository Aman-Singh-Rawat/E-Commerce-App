import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/widgets/custom_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool flag = true;

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
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 25),
            Container(
              decoration: flag
                  ? BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        color: const Color(0xFF101010),
                        width: 2,
                      ),
                    )
                  : BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(18)),
                      border: Border.all(
                        color: const Color(0xFFF5F5F5),
                        width: 1,
                      ),
                    ),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (!flag) {
                      flag = !flag;
                    }
                  });
                },
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 38,
                        backgroundColor: const Color(0xFFECECEC),
                        child: Image.asset(
                          "assets/images/img_message.png",
                          width: 24,
                          height: 24,
                          color: const Color(0xFF101010),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "via SMS:",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "+91 761*****67",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: const Color(0xFF101010),
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: !flag
                  ? BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        color: const Color(0xFF101010),
                        width: 2,
                      ),
                    )
                  : BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(18)),
                      border: Border.all(
                        color: const Color(0xFFF5F5F5),
                        width: 1,
                      ),
                    ),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (flag) {
                      flag = !flag;
                    }
                  });
                },
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 38,
                        backgroundColor: Color(0xFFECECEC),
                        child: Icon(
                          Icons.email_rounded,
                          size: 24,
                          color: Color(0xFF101010),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "via SMS:",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "ama****t@gmail.com",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: const Color(0xFF101010),
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: Expanded(
                child: CustomButton(
                  onPressedCallback: () {},
                  btnText: "Continue",
                  btnColor: const Color(0xFF101010),
                  btnElevation: 8,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
