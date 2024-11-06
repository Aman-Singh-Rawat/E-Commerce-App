import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialCustomButton extends StatelessWidget {
  SocialCustomButton({
    super.key,
    required this.onCallback,
    required this.socialBtnImage,
    this.socialBtnName,
  });

  final String? socialBtnName;
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
        child: socialBtnName != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(
                        socialBtnImage,
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        textAlign: TextAlign.start,
                        socialBtnName!,
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF101010),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Center(
                child: SvgPicture.asset(
                  width: 24,
                  height: 24,
                  socialBtnImage,
                ),
              ),
      ),
    );
  }
}
