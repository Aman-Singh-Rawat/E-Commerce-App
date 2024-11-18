import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    required this.onPressedCallback,
    required this.btnText,
    required this.btnColor,
    this.btnElevation,
  });

  final VoidCallback onPressedCallback;
  final String btnText;
  final Color btnColor;
  final double? btnElevation;

  @override
  State<CustomButton> createState() => _CustomButton();
}

class _CustomButton extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.btnColor,
        elevation: widget.btnElevation,
      ),
      onPressed: widget.onPressedCallback,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          widget.btnText,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            color: (widget.btnColor == const Color(0xFFE7E7E7))
                ? const Color(0xFF101010)
                : Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
