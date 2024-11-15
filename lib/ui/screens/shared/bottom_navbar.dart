import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesy/ui/screens/cart/cart_screen.dart';
import 'package:shoesy/ui/screens/home/home_screen.dart';
import 'package:shoesy/ui/screens/orders/orders_screens.dart';
import 'package:shoesy/ui/screens/profile/profile_screen.dart';
import 'package:shoesy/ui/screens/wallet/wallet_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _screens = [
    HomeScreen(),
    CartScreen(),
    OrdersScreen(),
    WalletScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/images/ic_outlined_cart.svg",
              height: 24,
              width: 24,
            ),
            activeIcon: SvgPicture.asset(
              "assets/images/ic_cart.svg",
              height: 24,
              width: 24,
            ),
            label: "Cart",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart),
            label: "Orders",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            activeIcon: Icon(Icons.account_balance_wallet_rounded),
            label: "Wallet",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
            ),
            label: "Profile",
            activeIcon: Icon(
              Icons.person_rounded,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        unselectedLabelStyle: GoogleFonts.lato(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedLabelStyle: GoogleFonts.lato(
          fontWeight: FontWeight.bold,
        ),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
