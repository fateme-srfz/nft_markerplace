import 'package:flutter/material.dart';
import 'package:nft_markerplace/widgets/filter_bar.dart';
import 'package:nft_markerplace/widgets/ranking_item.dart';
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
    {
      "name": "Azumi",
      "value": 200055.02,
      "change": 3.99,
      "image": "https://picsum.photos/50?random=7",
    },
    {
      "name": "Hape prime",
      "value": 180055.45,
      "change": 33.79,
      "image": "https://picsum.photos/50?random=8",
    },
    {
      "name": "Cryoto",
      "value": 90055.62,
      "change": -6.56,
      "image": "https://picsum.photos/50?random=9",
    },
    {
      "name": "Ape Club",
      "value": 88055.12,
      "change": 3.99,
      "image": "https://picsum.photos/50?random=10",
    },
    {
      "name": "Bat",
      "value": 10055.06,
      "change": 3.99,
      "image": "https://picsum.photos/50?random=11",
    },
    {
      "name": "Mutant",
      "value": 9095.27,
      "change": 3.99,
      "image": "https://picsum.photos/50?random=12",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF211134),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
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
            icon: Image.asset(
              'assets/icons/Right Title.png',
              width: 20,
              height: 20,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 90.0),
        child: Column(
          children: [
            TabBarWidget(),
            FilterBarWidget(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white.withAlpha(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: ListView.builder(
                      itemCount: ranking.length,
                      itemBuilder: (context, index) {
                        final item = ranking[index];
                        return RankingItem(item: item);
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
