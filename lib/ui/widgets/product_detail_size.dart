import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailSize extends StatefulWidget {
  const ProductDetailSize({super.key});

  @override
  State<ProductDetailSize> createState() => _ProductDetailSizeState();
}

class _ProductDetailSizeState extends State<ProductDetailSize> {
  final List<String> sizeList = ["140", "M", "L"];
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Size",
          style: GoogleFonts.poppins(
            color: const Color(0xFF101010),
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          children: List.generate(
            3,
                (index) {
              return Container(
                margin: const EdgeInsets.only(right: 8),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: _selectedIndex == index
                      ? const Color(0xFF101010)
                      : null,
                  border: _selectedIndex != index
                      ? Border.all(
                    color: const Color(0xFF7A7A7A),
                    width: 2,
                  )
                      : null,
                  borderRadius: BorderRadius.circular(44),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(44),
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Center(
                    child: Text(
                      sizeList[index],
                      style: GoogleFonts.montserrat(
                        color: _selectedIndex == index
                            ? Colors.white
                            : const Color(0xFF7A7A7A),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
