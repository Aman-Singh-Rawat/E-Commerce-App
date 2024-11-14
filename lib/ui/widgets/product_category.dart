import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/property.dart';

class ProductCategory extends StatefulWidget {
  const ProductCategory({super.key});

  @override
  State<ProductCategory> createState() => _ProductCategoryState();
}

class _ProductCategoryState extends State<ProductCategory> {
  int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productCategoryList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(left: 10, right: 6),
          decoration: BoxDecoration(
            color: _selectedIndex == index ? const Color(0xFF101010) : null,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0xFF101010),
              width: 2,
            ),
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              child: Center(
                child: Text(
                  productCategoryList[index],
                  style: GoogleFonts.poppins(
                    color: _selectedIndex == index ? Colors.white : const Color(0xFF101010),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
