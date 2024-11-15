import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/ui/widgets/search_view.dart';
import 'package:shoesy/utils/converters.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  Widget _notFoundMessage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/img.png",
          height: 190,
          width: 190,
        ),
        const SizedBox(height: 20),
        Text(
          "Not Found",
          style: GoogleFonts.montserrat(
            color: const Color(0XFF101010),
            fontWeight: FontWeight.w600,
            fontSize: 28,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "Sorry, the keyword you entered cannot be found, please check again or search with another keyword.",
          style: GoogleFonts.poppins(
            color: const Color(0XFF101010),
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
        child: Column(
          children: [
            SearchView(focusNode: _focusNode),
            Expanded(
              child: Center(
                child: _notFoundMessage(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
