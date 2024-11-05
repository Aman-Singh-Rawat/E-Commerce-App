import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    required this.onPressedCallback,
    required this.btnText,
    required this.btnColor,
    required this.btnElevation,
  });

  final VoidCallback onPressedCallback;
  final String btnText;
  final Color btnColor;
  final double btnElevation;

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
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
