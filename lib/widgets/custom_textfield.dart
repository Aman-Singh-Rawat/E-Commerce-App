import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.inputType,
  });

  final String hintText;
  final IconData? suffixIcon;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      cursorColor: const Color(0xFF101010),
      decoration: InputDecoration(
        fillColor: const Color(0xFFFAFAFA),
        filled: true,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          ),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          color: Colors.grey,
          fontSize: 14,
        ),
        suffixIcon: Icon(suffixIcon, color: Colors.grey,),
      ),
    );
  }
}
