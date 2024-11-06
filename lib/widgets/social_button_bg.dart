import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialCustomButton extends StatelessWidget {
  SocialCustomButton({
    super.key,
    required this.onCallback,
    required this.socialBtnImage,
    required this.socialBtnName,
  });

  final String socialBtnName;
  final String socialBtnImage;
  VoidCallback onCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 2,
            color: const Color(0xFFF5F5F5),
          )),
      child: InkWell(
        onTap: onCallback,
        borderRadius: BorderRadius.circular(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              socialBtnImage,
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 20),
            SizedBox(
              width: (MediaQuery.of(context).size.width/2), // TODO FIX THIS DESIGN ISSUE
              child: Text(
                textAlign: TextAlign.start,
                socialBtnName,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF101010),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
