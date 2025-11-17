import 'package:flutter/material.dart';
import 'package:nft_markerplace/screens/home_screen.dart';
import 'package:nft_markerplace/widgets/bottom_nav.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final pages = [
    const HomeScreen(),
    const Center(
      child: Text('Explore', style: TextStyle(color: Colors.white)),
    ),
    const Center(
      child: Text('Likes', style: TextStyle(color: Colors.white)),
    ),
    const Center(
      child: Text('Profile', style: TextStyle(color: Colors.white)),
    ),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsetsGeometry.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            child: BottomNav(
              currentIndex: _currentIndex,
              ontap: (i) {
                setState(() {
                  _currentIndex = i;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
