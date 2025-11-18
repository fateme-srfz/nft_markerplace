import 'package:flutter/material.dart';
import 'package:nft_markerplace/screens/home_screen.dart';
import 'package:nft_markerplace/screens/state_screen.dart';
import 'package:nft_markerplace/widgets/bottom_nav.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final pages = [
    const HomeScreen(),
     StateScreen(),
    const Center(
      child: Text('Search', style: TextStyle(color: Colors.white)),
    ),
    const Center(
      child: Text('Profile', style: TextStyle(color: Colors.white)),
    ),
  ];

  void _onNavTap(int idx) {
    if (idx == 10) {
      print('Hex button pressed');
    } else {
      setState(() {
        _currentIndex = idx;
      });
    }
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          pages[_currentIndex],
          Positioned(
            left: 0,
            right: 0,
            bottom: 15,
            child: BottomNav(
              currentIndex: _currentIndex,
              oTtap: _onNavTap,
              onHexTap: () => _onNavTap(10),
            ),
          ),
        ],
      ),
    );
  }
}
