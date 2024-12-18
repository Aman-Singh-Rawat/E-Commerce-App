import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuantityIncreaseDecrease extends StatefulWidget {
  const QuantityIncreaseDecrease({super.key});

  @override
  State<QuantityIncreaseDecrease> createState() =>
      _QuantityIncreaseDecreaseState();
}

class _QuantityIncreaseDecreaseState extends State<QuantityIncreaseDecrease> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quantity",
          style: GoogleFonts.poppins(
            color: const Color(0xFF101010),
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        const SizedBox(width: 20),
        Container(
          width: 160,
          height: 55,
          decoration: BoxDecoration(
            color: const Color(0xFFF3F3F3),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    if (_count != 0) {
                      _count--;
                    }
                  });
                },
                child: Center(
                  child: Text(
                    "-",
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF101010),
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                child: Text(
                  "$_count",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF101010),
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _count++;
                  });
                },
                child: Center(
                  child: Text(
                    "+",
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF101010),
                      fontSize: 30,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
