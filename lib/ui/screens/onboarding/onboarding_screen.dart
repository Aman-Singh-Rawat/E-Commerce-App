import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/custom_button.dart';
import '../authentication/social_login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;
  int _currentPage = 0;

  var onboardingList = [
    {
      "image": "assets/images/img_onboarding_one.png",
      "title": "We provide high quality products just for you",
    },
    {
      "image": "assets/images/img_onboarding_two.png",
      "title": "Your satisfaction is our number one priority",
    },
    {
      "image": "assets/images/img_onboarding_three.png",
      "title": "Let's fulfill your daily needs with Evira right now!",
    }
  ];

  AnimatedContainer _buildDots({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
        color: _currentPage == index
            ? const Color(0xFF101010)
            : Colors.grey.withAlpha(90),
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 34 : 10,
    );
  }

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _preloadImages();
  }

  void _preloadImages() {
    for (var item in onboardingList) {
      precacheImage(AssetImage(item["image"]!), context);
    }
  }

  void openNextScreen() {
    if (_currentPage < 2) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SocialLoginScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
            itemCount: 3,
            controller: _controller,
            onPageChanged: (value) => setState(() {
              _currentPage = value;
            }),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      onboardingList[index]["image"]!,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 20),
                    child: Text(
                      onboardingList[index]["title"]!,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                        color: const Color(0xFF101010),
                      ),
                    ),
                  ),
                  const SizedBox(height: 150)
                ],
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        3,
                        (int listIndex) => _buildDots(
                          index: listIndex,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 25,
                      bottom: 12,
                    ),
                    width: double.infinity,
                    child: CustomButton(
                      onPressedCallback: openNextScreen,
                      btnText: _currentPage < 2 ? "Next" : "Get Started",
                      btnColor: const Color(0xFF101010),
                      btnElevation: 8,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
