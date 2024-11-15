import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/ui/screens/home/search_screen.dart';
import 'package:shoesy/ui/widgets/product_category.dart';
import 'package:shoesy/ui/widgets/product_item.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.appBarTitle});

  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: GoogleFonts.montserrat(
            color: const Color(0XFF101010),
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchScreen(),
                ),
              );
            },
            icon: const Icon(Icons.search_rounded),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
              child: ProductCategory(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 25),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) => const ProductItem(),
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                childAspectRatio: 0.63,
              ),
            ),
          )
        ],
      ),
    );
  }
}
