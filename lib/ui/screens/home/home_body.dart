import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/utils/converters.dart';
import 'package:shoesy/utils/fill_profile_property.dart';

import '../../../utils/profile_enum.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
            const SizedBox(height: 20),
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
            ),
            const SizedBox(height: 20),
            CarouselSlider(
              items: offersList.map(
                (offer) {
                  return Container(
                    color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  offer[Offers.offerDiscount] ?? '',
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFF101010),
                                    fontSize: 34,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  offer[Offers.offerTitle] ?? '',
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFF101010),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  offer[Offers.offerSubtitle] ?? '',
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFF101010),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(child: Image.asset(offer[Offers.offerImage]!,fit: BoxFit.cover,))
                      ],
                    ),
                  );
                },
              ).toList(),
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                onPageChanged: (index, reason) {},
                viewportFraction: 1.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
