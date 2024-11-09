import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      this.inputType,
      this.isEnabled,
      this.onClicked});

  final String hintText;
  final IconData? suffixIcon;
  final TextInputType? inputType;
  final bool? isEnabled;
  final VoidCallback? onClicked;

  final InputDecoration _decoration = InputDecoration(
    fillColor: const Color(0xFFFAFAFA),
    filled: true,
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(14),
      ),
      borderSide: BorderSide.none,
    ),
    hintStyle: GoogleFonts.poppins(
      color: Colors.grey,
      fontSize: 14,
    ),
  );

  final TextStyle _textStyle = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: const Color(0xFF101010),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        hintText == "Phone Number"
            ? IntlPhoneField(
                style: _textStyle,
                keyboardType: inputType!,
                decoration: _decoration,
                cursorColor: const Color(0xFF101010),
              )
            : TextFormField(
                style: _textStyle,
                onTap: onClicked,
                readOnly: isEnabled ?? false,
                keyboardType: inputType,
                cursorColor: const Color(0xFF101010),
                decoration: _decoration.copyWith(
                  hintText: hintText,
                  suffixIcon: (suffixIcon == Icons.arrow_drop_down_rounded)
                      ? Icon(
                          suffixIcon,
                          color: Colors.grey,
                          size: 44,
                        )
                      : Icon(
                          suffixIcon,
                          color: Colors.grey,
                        ),
                ),
              ),
        const SizedBox(height: 15),
      ],
    );
  }
}
