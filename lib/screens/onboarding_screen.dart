import 'dart:ui';

import 'package:blurbox/blurbox.dart';
import 'package:flutter/material.dart';
import 'package:nft_markerplace/screens/home_screen.dart';
import 'package:nft_markerplace/screens/main_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final heightscreen = MediaQuery.of(context).size.height;
    final widthscreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/unsplashscreen.png",
              fit: BoxFit.fill,
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: heightscreen),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(height: 80),

                      Text(
                        'Welcome to\nNFT Marketplace',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay',
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),

                      SizedBox(height: heightscreen * 0.40),
                      BlurBox(
                        width: widthscreen * 0.3,
                        color: Color.fromRGBO(255, 255, 255, 0.01),
                        borderRadius: BorderRadiusGeometry.circular(27),
                        border: Border.all(
                          width: 0.9,
                          color: Color(0xFFFFFFFF),
                        ),
                        blur: 27,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                'Explore and Mint NFTs',
                                style: TextStyle(
                                  fontFamily: 'SFProDisplay',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                textAlign: TextAlign.center,
                                'You can buy and sell the NFTs of the best \nartists in the world.',
                                style: TextStyle(
                                  fontFamily: 'SFProDisplay',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(235, 235, 245, 0.6),
                                ),
                              ),
                              const SizedBox(height: 10),
                              // ElevatedButton(
                              //   style: ElevatedButton.styleFrom(
                              //     backgroundColor: Color.fromRGBO(
                              //       151,
                              //       169,
                              //       246,
                              //       0.24,
                              //     ),
                              //   ),
                              //   onPressed: () {
                              //     Navigator.pushReplacement(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) => HomeScreen(),
                              //       ),
                              //     );
                              //   },
                              //   child: Padding(
                              //     padding: const EdgeInsets.symmetric(
                              //       horizontal: 55,
                              //       vertical: 15,
                              //     ),
                              //     child: Text(
                              //       'Get started now',
                              //       style: TextStyle(
                              //         fontFamily: 'SFProDisplay',
                              //         fontSize: 15,
                              //         fontWeight: FontWeight.w700,
                              //         color: Color.fromRGBO(255, 255, 255, 1),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(27),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 67,
                                    sigmaY: 67,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MainScreen(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1.12,
                                          color: Color.fromRGBO(
                                            255,
                                            255,
                                            255,
                                            0.3,
                                          ),
                                        ),
                                        color: Color.fromRGBO(
                                          151,
                                          169,
                                          246,
                                          0.1,
                                        ),
                                        borderRadius:
                                            BorderRadiusGeometry.circular(27),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 55,
                                          vertical: 15,
                                        ),
                                        child: Text(
                                          'Get started now',
                                          style: TextStyle(
                                            fontFamily: 'SFProDisplay',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromRGBO(
                                              255,
                                              255,
                                              255,
                                              1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
