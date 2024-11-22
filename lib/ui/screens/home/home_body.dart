import 'package:flutter/material.dart';
import 'package:shoesy/ui/screens/home/product_detail_screen.dart';
import 'package:shoesy/ui/screens/home/product_screen.dart';
import 'package:shoesy/ui/screens/home/search_screen.dart';
import 'package:shoesy/ui/screens/home/special_offer_screen.dart';
import 'package:shoesy/ui/widgets/home_offer.dart';
import 'package:shoesy/ui/widgets/product_items_type.dart';
import 'package:shoesy/ui/widgets/search_view.dart';
import 'package:shoesy/ui/widgets/section_header.dart';

import '../../widgets/product_category.dart';
import '../../widgets/product_item.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                SearchView(onCallBack: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchScreen(),
                    ),
                  );
                }),
                const SizedBox(height: 20),
                SectionHeader(
                  sectionTitle: "Special Offers",
                  onTextClicked: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SpecialOfferScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(child: HomeOffer()),
        const SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverToBoxAdapter(
          child: Container(
            margin: const EdgeInsets.only(right: 8),
            height: 195,
            child: const ProductItemsType(),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: SectionHeader(
              sectionTitle: "Most Popular",
              onTextClicked: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const ProductScreen(appBarTitle: "Most Popular"),
                  ),
                );
              },
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
            child: ProductCategory(),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 25),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              childAspectRatio: 0.63,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return GestureDetector(
                  child: const ProductItem(),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductDetailScreen(),
                      ),
                    );
                  },
                );
              },
              childCount: 10,
            ),
          ),
        ),
      ],
    );
  }
}
