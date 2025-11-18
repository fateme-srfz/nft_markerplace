import 'package:flutter/material.dart';
import 'package:nft_markerplace/widgets/tab_bar.dart';

class StateScreen extends StatelessWidget {
  StateScreen({super.key});

  final List<Map<String, dynamic>> ranking = [
    {
      "name": "Azumi",
      "value": 200055.02,
      "change": 3.99,
      "image": "https://picsum.photos/50?random=1",
    },
    {
      "name": "Hape prime",
      "value": 180055.45,
      "change": 33.79,
      "image": "https://picsum.photos/50?random=2",
    },
    {
      "name": "Cryoto",
      "value": 90055.62,
      "change": -6.56,
      "image": "https://picsum.photos/50?random=3",
    },
    {
      "name": "Ape Club",
      "value": 88055.12,
      "change": 3.99,
      "image": "https://picsum.photos/50?random=4",
    },
    {
      "name": "Bat",
      "value": 10055.06,
      "change": 3.99,
      "image": "https://picsum.photos/50?random=5",
    },
    {
      "name": "Mutant",
      "value": 9095.27,
      "change": 3.99,
      "image": "https://picsum.photos/50?random=6",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF211134),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF211134),
        title: Text(
          'State',
          style: TextStyle(
            fontFamily: 'SFProDisplay',
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Color(0xFFFFFFFF),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/Right Title.png'),
          ),
        ],
      ),
      body: Column(children: [TabBarWidget()]),
    );
  }
}
