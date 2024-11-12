import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/fill_profile_property.dart';
import '../../utils/profile_enum.dart';

class HomeOffer extends StatefulWidget {
  const HomeOffer({super.key});

  @override
  State<HomeOffer> createState() => _HomeOffer();
}

class _HomeOffer extends State<HomeOffer> {
  int _currentPage = 0;

  AnimatedContainer _buildDots({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
        color: _currentPage == index
            ? const Color(0xFF101010)
            : Colors.grey.withAlpha(90),
      ),
      margin: const EdgeInsets.only(right: 6),
      height: 5,
      curve: Curves.easeIn,
      width: _currentPage == index ? 25 : 5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: offersList.map(
            (offer) {
          return Stack(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 14),
                decoration: BoxDecoration(
                  color: const Color(0xFFE7E7E7),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                offer[Offers.offerDiscount] ?? '',
                                style: GoogleFonts.montserrat(
                                  color: const Color(0xFF101010),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                offer[Offers.offerTitle] ?? '',
                                style: GoogleFonts.montserrat(
                                  color: const Color(0xFF101010),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                offer[Offers.offerSubtitle] ?? '',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  color: const Color(0xFF101010),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          width: double.infinity,
                          height: double.infinity,
                          offer[Offers.offerImage]!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      4,
                          (listIndex) => _buildDots(index: listIndex),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ).toList(),
      options: CarouselOptions(
        height: 190,
        autoPlay: true,
        onPageChanged: (index, reason) => setState(() {
          _currentPage = index;
        }),
        viewportFraction: 1.0,
      ),
    );
  }
}