import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/property.dart';

class RatingBarWidget extends StatefulWidget {
  const RatingBarWidget({super.key});

  @override
  State<RatingBarWidget> createState() => _RatingBarWidgetState();
}

class _RatingBarWidgetState extends State<RatingBarWidget> {
  var list = ["All", "5", "4", "3", "2", "1"];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productCategoryList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(left: 9, right: 2),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: _selectedIndex == index
                        ? Colors.white
                        : const Color(0xFF101010),
                    size: 20,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    productCategoryList[index],
                    style: GoogleFonts.poppins(
                      color: _selectedIndex == index
                          ? Colors.white
                          : const Color(0xFF101010),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
