import 'dart:ui';

import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> ontap;
  const BottomNav({super.key, required this.currentIndex, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: SizedBox(
          height: 70,
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
    final icons = [
      Icons.home_outlined,
      Icons.explore_outlined,
      Icons.favorite_border,
      Icons.person_outline,
    ];
    final isSelected = currentIndex == index;

    return Material(
      color: Colors.transparent,
      child: InkResponse(
        onTap: () => ontap(index),
        radius: 36,
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
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              icons[index],
              size: isSelected ? 29 : 28,
              color: isSelected ? Colors.black45 : Colors.black38,
            ),
          ),
        ),
      ),
    );
  }
}
