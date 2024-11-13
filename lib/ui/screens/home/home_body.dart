import 'package:flutter/material.dart';
import 'package:shoesy/ui/widgets/home_offer.dart';
import 'package:shoesy/ui/widgets/product_items.dart';
import 'package:shoesy/ui/widgets/search_view.dart';
import 'package:shoesy/ui/widgets/section_header.dart';

import '../../widgets/product_category.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                const SearchView(),
                const SizedBox(height: 20),
                SectionHeader(
                  sectionTitle: "Special Offers",
                  onTextClicked: () {},
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const HomeOffer(),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(right: 8),
            height: 195,
            child: const ProductItems(),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: SectionHeader(
              sectionTitle: "Most Popular",
              onTextClicked: () {},
            ),
          ),
          const SizedBox(height: 12),
          const SizedBox(
            height: 40,
            child: ProductCategory(),
          ),
        ],
      ),
    );
  }
}
