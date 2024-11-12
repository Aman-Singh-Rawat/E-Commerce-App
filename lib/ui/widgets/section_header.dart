import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.sectionTitle,
    required this.onTextClicked,
  });

  final String sectionTitle;
  final VoidCallback onTextClicked;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionTitle,
          style: GoogleFonts.montserrat(
            color: const Color(0xFF101010),
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        InkWell(
          onTap: onTextClicked,
          child: Text(
            "See All",
            style: GoogleFonts.montserrat(
              color: const Color(0xFF101010),
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        )
      ],
    );
  }
}
