import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/ui/widgets/custom_button.dart';
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
    return SingleChildScrollView(
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
                  height: 1.5,
                  width: double.infinity,
                  color: const Color(0xFFEBEBEB),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                ),
                Text(
                  "Categories",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF101010),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.only(top: 12, bottom: 16),
            child: const ProductCategory(),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 14.0),
            child: Text(
              "Price Range",
              style: GoogleFonts.poppins(
                color: const Color(0xFF101010),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const RangeSliderWidget(),
          Container(
            margin: const EdgeInsets.only(
                left: 14, right: 14, top: 16, bottom: 12),
            child: Text(
              "Sort by",
              style: GoogleFonts.poppins(
                color: const Color(0xFF101010),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
            child: ProductCategory(),
          ),
          Container(
            margin: const EdgeInsets.only(
                left: 14, right: 14, top: 16, bottom: 12),
            child: Text(
              "Rating",
              style: GoogleFonts.poppins(
                color: const Color(0xFF101010),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
            child: RatingBarWidget(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: const Color(0xFFEBEBEB),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        onPressedCallback: () {},
                        btnText: "Reset",
                        btnColor: const Color(0xFFE7E7E7),
                        btnElevation: 0,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: CustomButton(
                        onPressedCallback: () {},
                        btnText: "Apply",
                        btnColor: const Color(0xFF101010),
                        btnElevation: 0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}
