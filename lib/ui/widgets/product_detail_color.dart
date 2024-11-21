import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailColor extends StatefulWidget {
  const ProductDetailColor({
    super.key,
  });

  @override
  State<ProductDetailColor> createState() => _ProductDetailColorState();
}

class _ProductDetailColorState extends State<ProductDetailColor> {

  int _colorSelectedIndex = 0;
  final List<Color> productColor = [
    Colors.pink,
    Colors.deepPurple,
    Colors.blue,
    Colors.cyan
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Color",
          style: GoogleFonts.poppins(
            color: const Color(0xFF101010),
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: List.generate(
            productColor.length,
                (index) {
              return Container(
                margin: const EdgeInsets.only(right: 12),
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: productColor[index],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(44),
                  ),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(44),
                  onTap: () {
                    setState(() {
                      _colorSelectedIndex = index;
                    });
                  },
                  child: Center(
                    child: _colorSelectedIndex == index
                        ? SvgPicture.asset(
                      "assets/images/ic_correct.svg",
                      width: 30,
                      height: 30,
                    )
                        : null,
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
