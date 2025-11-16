import 'dart:ui';
import 'package:blurbox/blurbox.dart';
import 'package:flutter/material.dart';
import 'package:nft_markerplace/models/trending_class.dart';

class TrendingCard extends StatelessWidget {
  final List<TrendingClass> trendinglist;
  const TrendingCard({super.key, required this.trendinglist});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: trendinglist.length,
        itemBuilder: (context, index) {
          final trending = trendinglist[index];
          return BlurBox(
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(27),
                child: Container(
                  color: Colors.white.withAlpha(20),
                  width: 220,
                  height: 200,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          left: 10,
                          right: 10,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Material(
                            clipBehavior: Clip.antiAlias,
                            borderRadius:  BorderRadius.circular(15),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(15),
                              onTap: () {},
                              child: Ink.image(
                                image: AssetImage(trending.imageurl),
                                fit: BoxFit.cover,
                                width: 200,
                                height: 200,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            trending.title,
                            style: TextStyle(
                              fontFamily: 'SFProDisplay',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.favorite, color: Colors.red, size: 15),
                              const SizedBox(width: 2),
                              Text(
                                trending.like.toString(),
                                style: TextStyle(
                                  fontFamily: 'SFProDisplay',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
