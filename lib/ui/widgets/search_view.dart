import 'package:flutter/material.dart';

import '../../utils/converters.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  get offer => null;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: textFieldDecoration.copyWith(
        hintText: "Search",
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Image.asset("assets/images/img_filter.png"),
        ),
      ),
    );
  }
}