import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/ui/widgets/product_category.dart';
import 'package:shoesy/ui/widgets/range_slider_widget.dart';
import 'package:shoesy/ui/widgets/rating_bar_widget.dart';

class SortFilterBottomSheet extends StatefulWidget {
  const SortFilterBottomSheet({super.key});

  @override
  State<SortFilterBottomSheet> createState() => _SortFilterBottomSheetState();
}

class _SortFilterBottomSheetState extends State<SortFilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Sort & Filter",
                      style: GoogleFonts.poppins(
                          color: const Color(0xFF101010),
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    height: 1,
                    color: const Color(0xFFBEBEBE),
                  ),
                  Text(
                    "Categories",
                    style: GoogleFonts.poppins(
                        color: const Color(0xFF101010),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: const ProductCategory(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5),
              child: Text(
                "Price Range",
                style: GoogleFonts.poppins(
                    color: const Color(0xFF101010),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const RangeSliderWidget(),
            Container(
              margin: const EdgeInsets.only(left: 14, right: 14, top: 14, bottom: 9),
              child: Text(
                "Sort by",
                style: GoogleFonts.poppins(
                  color: const Color(0xFF101010),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
              child: ProductCategory(),
            ),
            Container(
              margin: const EdgeInsets.only(left: 14, right: 14, top: 14, bottom: 9),
              child: Text(
                "Rating",
                style: GoogleFonts.poppins(
                  color: const Color(0xFF101010),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
              child: RatingBarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
