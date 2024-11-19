import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/ui/screens/home/home_body.dart';
import 'package:shoesy/ui/screens/home/notification_screen.dart';
import 'package:shoesy/ui/screens/home/product_screen.dart';
import 'package:shoesy/utils/converters.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 26,
              backgroundImage: AssetImage("assets/images/img_profile.jpg"),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "$getGreeting 👋",
                    style: GoogleFonts.montserrat(
                      color: const Color(0xFF101010),
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Andrew Ainsley",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.montserrat(
                      color: const Color(0xFF101010),
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationScreen(),
                    ));
              },
              icon: SvgPicture.asset("assets/images/ic_outlined_bell_icon.svg"),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const ProductScreen(appBarTitle: "My Wishlist"),
                  ),
                );
              },
              icon: SvgPicture.asset(
                "assets/images/ic_outlined_heart.svg",
                colorFilter: const ColorFilter.mode(
                  Color(0xFF101010),
                  BlendMode.srcIn,
                ),
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),
      ),
      body: const HomeBody(),
    );
  }
}
