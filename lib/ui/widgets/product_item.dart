import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/ui/widgets/product_item_image_section.dart';
import 'package:shoesy/ui/widgets/quantity_of_sold_item.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProductItemImageSection(),
        const SizedBox(height: 5),
        Text(
          "Suga Leather Shoes",
          style: GoogleFonts.montserrat(
            color: const Color(0xFF101010),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
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
            const SizedBox(width: 6),
            Text(
              "4.5",
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 11),
            Container(
              height: 20,
              width: 1.5,
              color: Colors.grey,
            ),
            const SizedBox(width: 11),
            const QuantityOfSoldItem(),
            const SizedBox(width: 10)
          ],
        ),
        const SizedBox(height: 5),
        Text(
          "₹420.00",
          style: GoogleFonts.poppins(
            fontSize: 17,
            color: const Color(0xFF101010),
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
