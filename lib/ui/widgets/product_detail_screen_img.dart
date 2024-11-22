import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoesy/utils/property.dart';

import '../../utils/profile_enum.dart';

class ProductDetailScreenImg extends StatefulWidget {
  const ProductDetailScreenImg({super.key});

  @override
  State<ProductDetailScreenImg> createState() => _ProductDetailScreenImgState();
}

class _ProductDetailScreenImgState extends State<ProductDetailScreenImg> {
  int _currentPage = 0;

  AnimatedContainer _buildDots({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
        color: _currentPage == index
            ? const Color(0xFF101010)
            : Colors.black38,
      ),
      margin: const EdgeInsets.only(right: 6),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 45 : 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: offersList.map((offer) {
          return Stack(
            children: [
              ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  offer[Offers.offerImage]!,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      4,
                      (listIndex) => _buildDots(index: listIndex),
                    ),
                  ),
                ),
              )
            ],
          );
        }).toList(),
        options: CarouselOptions(
          height: 400,
          autoPlay: true,
          onPageChanged: (index, reason) => setState(() {
            _currentPage = index;
          }),
          viewportFraction: 1.0,
        ));
  }
}
