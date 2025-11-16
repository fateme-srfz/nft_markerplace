import 'package:flutter/material.dart';
import 'package:nft_markerplace/models/feature_class.dart';
import 'package:nft_markerplace/models/trending_class.dart';
import 'package:nft_markerplace/widgets/feature_card.dart';
import 'package:nft_markerplace/widgets/trending_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF211134),
      appBar: AppBar(
        backgroundColor: Color(0xFF211134),
        title: Center(
          child: Text(
            'NFT Marketplace',
            style: TextStyle(
              fontFamily: 'SFProDisplay',
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            FeatureCard(featurelist: FeatureClass.featureList),
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Trending collections',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'SFProDisplay',
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TrendingCard(trendinglist: TrendingClass.trendinglist),
          ],
        ),
      ),
    );
  }
}
