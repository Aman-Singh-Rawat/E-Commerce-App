import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/utils/converters.dart';
import 'package:shoesy/utils/fill_profile_property.dart';

import '../../../utils/profile_enum.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
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
              ],
            ),
          ),
          CarouselSlider(
            items: offersList.map(
              (offer) {
                return Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE7E7E7),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    offer[Offers.offerDiscount] ?? '',
                                    style: GoogleFonts.roboto(
                                      color: const Color(0xFF101010),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    offer[Offers.offerTitle] ?? '',
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xFF101010),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    offer[Offers.offerSubtitle] ?? '',
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
              height: 200,
              autoPlay: true,
              onPageChanged: (index, reason) => setState(() {
                _currentPage = index;
              }),
              viewportFraction: 1.0,
            ),
          )
        ],
      ),
    );
  }
}
