import 'dart:ui';

import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> ontap;
  const BottomNav({super.key, required this.currentIndex, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          color: Colors.white.withAlpha(40),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (i) => _buildNavItem(i)),
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
        onTap: () => ontap(index),
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
}
