import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../utils/converters.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.suffixIcon,
    this.inputType,
    this.isEnabled,
    this.onClicked,
  });

  final String hintText;
  final IconData? suffixIcon;
  final TextInputType? inputType;
  final bool? isEnabled;
  final TextEditingController controller;
  final VoidCallback? onClicked;

  final TextStyle _textStyle = GoogleFonts.poppins(
    fontSize: 14,
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
                decoration: textFieldDecoration,
                controller: controller,
                initialCountryCode: "IN",
                cursorColor: const Color(0xFF101010),
              )
            : TextFormField(
                controller: controller,
                style: _textStyle,
                onEditingComplete: () => FocusScope.of(context).nextFocus(),
                onTap: onClicked,
                readOnly: isEnabled ?? false,
                keyboardType: inputType,
                cursorColor: const Color(0xFF101010),
                decoration: textFieldDecoration.copyWith(
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
