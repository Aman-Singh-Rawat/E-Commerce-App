import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/ui/screens/profile/fill_profile_input_widgets.dart';
import 'package:shoesy/ui/widgets/custom_button.dart';
import 'package:shoesy/utils/converters.dart';
import 'package:shoesy/utils/profile_enum.dart';

import '../../widgets/custom_textfield.dart';

class FillProfile extends StatefulWidget {
  const FillProfile({super.key});

  @override
  State<FillProfile> createState() => _FillProfileState();
}

class _FillProfileState extends State<FillProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Fill Your Profile",
          style: GoogleFonts.poppins(
            color: const Color(0xFF101010),
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(7),
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Color(0xFFF5F5F7),
                      child: Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Icon(
                          Icons.person_rounded,
                          size: 130,
                          color: Color(0xFFE9EAEF),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const FillProfileInputWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}
