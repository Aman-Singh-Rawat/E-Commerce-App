import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/ui/widgets/product_detail_color.dart';
import 'package:shoesy/ui/widgets/product_detail_screen_img.dart';
import 'package:shoesy/ui/widgets/product_detail_size.dart';
import 'package:shoesy/ui/widgets/quantity_increase_decrease.dart';
import 'package:shoesy/ui/widgets/quantity_of_sold_item.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Positioned(
                        top: 45,
                        left: 14,
                        child: IconButton(
                          onPressed: () { Navigator.pop(context); },
                          icon: const Icon(
                            CupertinoIcons.arrow_left,
                            size: 28,
                          ),
                        ),
                      ),
                      const ProductDetailScreenImg(),
                    ],
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
                            Flexible(
                              child: Text(
                                "Venesa Long Shirt",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textScaler: const TextScaler.linear(1.1),
                                style: GoogleFonts.montserrat(
                                  color: const Color(0xFF101010),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
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
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla condimentum tempor urna, vitae laoreet ipsum sodales et.",
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF101010),
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ProductDetailSize(),
                              SizedBox(width: 20),
                              ProductDetailColor(),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const QuantityIncreaseDecrease(),
                        const SizedBox(height: 20),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                Container(
                  height: 1,
                  width: double.infinity,
                  color: const Color(0xFFEBEBEB),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total price",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "₹320.00",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.montserrat(
                              color: const Color(0xFF101010),
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF101010),
                          elevation: 0,
                        ),
                        onPressed: () {},
                        child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.shopping_bag_rounded,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 15),
                                Text(
                                  "Add to Cart",
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
