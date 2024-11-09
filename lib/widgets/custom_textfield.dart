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
    this.isEnabled,
    this.onClicked
  });

  final String hintText;
  final IconData? suffixIcon;
  final TextInputType? inputType;
  final bool? isEnabled;
  final VoidCallback? onClicked;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onTap: () {
            if (onClicked != null) {
              print("TextFormField tapped"); // Debugging print
              onClicked!(); // Trigger the onClicked callback
            }
        },
          readOnly: isEnabled ?? false,
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
