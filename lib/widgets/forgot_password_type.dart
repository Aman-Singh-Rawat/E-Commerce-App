import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordType extends StatefulWidget {
  const ForgotPasswordType({
    super.key,
    this.imagePath,
    required this.passwordTypeTextVia,
    required this.passwordTypeVia,
  });

  final String? imagePath;
  final String passwordTypeTextVia;
  final String passwordTypeVia;

  @override
  State<ForgotPasswordType> createState() => _ForgotPasswordType();
}

class _ForgotPasswordType extends State<ForgotPasswordType> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 18),
      child: Row(
        children: [
          CircleAvatar(
            radius: 38,
            backgroundColor: const Color(0xFFECECEC),
            child: (widget.imagePath != null)
                ? Image.asset(
                    widget.imagePath!,
                    width: 24,
                    height: 24,
                    color: const Color(0xFF101010),
                  )
                : const Icon(
                    Icons.email_rounded,
                    size: 24,
                    color: Color(0xFF101010),
                  ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.passwordTypeTextVia,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                widget.passwordTypeVia,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: const Color(0xFF101010),
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
