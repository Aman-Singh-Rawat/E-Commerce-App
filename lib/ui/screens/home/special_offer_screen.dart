import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/ui/widgets/home_offer.dart';

class SpecialOfferScreen extends StatelessWidget {
  const SpecialOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBFBFB),
        title: Text(
          "Special Offers",
          style: GoogleFonts.montserrat(
            color: const Color(0xFF101010),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.all(14),
          child: const HomeOffer(),
        ),
        itemCount: 4,
      ),
    );
  }
}
