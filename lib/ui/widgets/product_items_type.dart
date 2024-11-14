import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/utils/property.dart';

import '../../utils/profile_enum.dart';

class ProductItemsType extends StatelessWidget {
  const ProductItemsType({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 8,
      ),
      itemCount: productMap.length,
      itemBuilder: (context, index) {
        final item = productMap[index];

        return Column(
          children: [
            CircleAvatar(
              backgroundColor: const Color(0xFFEBEBEB),
              radius: 27,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset(
                  item[Products.clotheImage] as String,
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              item[Products.clothes] as String,
              style: GoogleFonts.montserrat(
                color: const Color(0xFF101010),
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            )
          ],
        );
      },
    );
  }
}
