import 'dart:ui';

import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> oTtap;
  final VoidCallback? onHexTap;
  const BottomNav({
    super.key,
    required this.currentIndex,
    required this.oTtap,
    this.onHexTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          height: 85,
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          color: Colors.white.withAlpha(40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildNavItem(0),
              _buildNavItem(1),

              _buildHexButton(),

              _buildNavItem(2),
              _buildNavItem(3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index) {
    final bool isSelected = currentIndex == index;

    return Material(
      borderRadius: BorderRadius.circular(36),
      color: Colors.transparent,
      child: InkResponse(
        onTap: () => oTtap(index),
        radius: 36,
        borderRadius: BorderRadius.circular(36),
        containedInkWell: true,
        highlightShape: BoxShape.circle,
        splashColor: Colors.white12,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 180),
          padding: isSelected
              ? const EdgeInsets.all(6)
              : const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white12 : Colors.transparent,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              _icons[index],
              height: isSelected ? 45 : 35,
              width: isSelected ? 45 : 35,
              color: isSelected ? Colors.white : Colors.white70,
            ),
          ),
        ),
      ),
    );
  }

  final List<String> _icons = const [
    'assets/icons/Home.png',
    'assets/icons/Stats.png',
    'assets/icons/Explore.png',
    'assets/icons/More.png',
  ];

  Widget _buildHexButton() {
    final bool isSelected = currentIndex == 10;
    return GestureDetector(
      onTap: onHexTap,
      child: Container(
        width: 70,
        height: 70,
        alignment: Alignment.center,
        child: Stack(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: isSelected
                        ? Colors.pinkAccent.withAlpha(60)
                        : Colors.pinkAccent.withAlpha(40),
                    blurRadius: isSelected ? 35 : 25,
                  ),
                ],
              ),
            ),

            ClipPath(
              clipper: HexagonClipper(),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: isSelected
                        ? [Colors.pinkAccent, Color(0xFFb26ffc)]
                        : [
                            Color.fromARGB(255, 229, 218, 225),
                            Color(0xFFb26ffc),
                          ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Image.asset(
                  'assets/icons/Minted.png',
                  width: 35,
                  height: 35,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    double w = size.width;
    double h = size.height;

    path.moveTo(w * 0.5, 0);
    path.lineTo(w, h * 0.25);
    path.lineTo(w, h * 0.75);
    path.lineTo(w * 0.5, h);
    path.lineTo(0, h * 0.75);
    path.lineTo(0, h * 0.25);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
