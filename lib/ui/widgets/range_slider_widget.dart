import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({super.key});

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  RangeValues _currentRangeValues = const RangeValues(100, 650);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RangeSlider(
          values: _currentRangeValues,
          min: 0,
          max: 1000,
          divisions: 100,
          activeColor: const Color(0xFF101010),
          inactiveColor: const Color(0xFFEBEBEB),
          labels: RangeLabels(
            "₹${_currentRangeValues.start.round()}",
            "₹${_currentRangeValues.end.round()}",
          ),
          onChanged: (values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '₹${_currentRangeValues.start.round()}',
                style: GoogleFonts.poppins(
                  color: const Color(0xFF101010),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              Text(
                '₹${_currentRangeValues.end.round()}',
                style: GoogleFonts.poppins(
                  color: const Color(0xFF101010),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
