import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transparent_image/transparent_image.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 220,
          height: 200,
          decoration: const BoxDecoration(
            color: Color(0xFFF3F3F3),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: const NetworkImage("assets/images/img_offer_shoe.png"),
            fit: BoxFit.contain,
            width: double.infinity,
          ),
        ),
        Positioned(
          right: 10,
          top: 10,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: const Color(0xFF101010),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                "assets/images/ic_outlined_heart.svg",
                theme: SvgTheme(currentColor: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
