import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:transparent_image/transparent_image.dart';

class ProductItemImageSection extends StatelessWidget {
  const ProductItemImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 165,
          height: 165,
          decoration: const BoxDecoration(
            color: Color(0xFFF3F3F3),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: const AssetImage("assets/images/img_offer_shoe.png",),
            fit: BoxFit.contain,
            width: double.infinity,
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topEnd,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, right: 20),
            child: InkWell(
              onTap: () {},
              child: CircleAvatar(
                radius: 14,
                backgroundColor: const Color(0xFF101010),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: SvgPicture.asset(
                    "assets/images/ic_outlined_heart.svg",
                    theme: const SvgTheme(currentColor: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}