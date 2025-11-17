import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> ontap;
  const BottomNav({super.key, required this.currentIndex, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(4, (i) => _buildNavItem(i)),
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
        containedInkWell: true,
        highlightShape: BoxShape.circle,
        splashColor: Colors.white24,
        radius: 26,
        onTap: () => ontap(index),
        child: Container(
          width: 50,
          height: 80,
          child: ClipOval(
            child: Center(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 180),
                padding: isSelected
                    ? const EdgeInsets.all(6)
                    : const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.white12 : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icons[index],
                  size: isSelected ? 29 : 28,
                  color: isSelected ? Colors.black45 : Colors.black38,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
