import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/ui/widgets/product_detail_color.dart';
import 'package:shoesy/ui/widgets/product_detail_size.dart';
import 'package:shoesy/ui/widgets/quantity_increase_decrease.dart';
import 'package:shoesy/ui/widgets/quantity_of_sold_item.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/img_offer_girl.png",
              width: double.infinity,
              height: 400,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Venesa Long Shirt",
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF101010),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/images/ic_outlined_heart.svg",
                          colorFilter: const ColorFilter.mode(
                            Color(0xFF101010),
                            BlendMode.srcIn,
                          ),
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const QuantityOfSoldItem(),
                      const SizedBox(width: 15),
                      RatingBar.builder(
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Color(0xFF101010),
                        ),
                        itemSize: 24,
                        itemCount: 1,
                        initialRating: 0.2,
                        allowHalfRating: true,
                        minRating: 1,
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "4.8 (4,749 reviews)",
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF101010),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: const Color(0xFFEBEBEB),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Description",
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF101010),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla condimentum tempor urna, vitae laoreet ipsum sodales et.",
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF101010),
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ProductDetailSize(),
                        SizedBox(width: 15),
                        ProductDetailColor(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const QuantityIncreaseDecrease(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
