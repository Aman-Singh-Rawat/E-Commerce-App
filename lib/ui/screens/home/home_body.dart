import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/utils/converters.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          TextFormField(
            decoration: textFieldDecoration.copyWith(
              hintText: "Search",
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/img_filter.png"),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Special Offers",
                style: GoogleFonts.poppins(
                  color: const Color(0xFF101010),
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "See All",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF101010),
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
