import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

String getFormattedDate(DateTime date) {
  return DateFormat("dd MMMM, EEEE").format(date);
}

get getGreeting {
  var hour = DateTime.now().hour;

  if (hour < 12) {
    return 'Good morning';
  } else if (hour < 17) {
    return 'Good afternoon';
  } else {
    return 'Good evening';
  }
}

InputDecoration get textFieldDecoration {
  return InputDecoration(
    fillColor: const Color(0xFFFAFAFA),
    filled: true,
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(14),
      ),
      borderSide: BorderSide.none,
    ),
    hintStyle: GoogleFonts.poppins(
      color: Colors.grey,
      fontSize: 14,
    ),
  );
}