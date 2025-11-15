import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_markerplace/models/feature_class.dart';

class FeatureCard extends StatelessWidget {
  final List<FeatureClass> featurelist;
  const FeatureCard({super.key, required this.featurelist});

  @override
  Widget build(BuildContext context) {
    final heightscreen = MediaQuery.of(context).size.height;
    final widthscreen = MediaQuery.of(context).size.width;
    return SizedBox(
      height: heightscreen * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: featurelist.length,
        itemBuilder: (context, index) {
          final feature = featurelist[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Material(
              borderRadius: BorderRadius.circular(26),
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                borderRadius: BorderRadius.circular(26),
                onTap: () {},
                child: Stack(
                  children: [
                    Ink.image(
                      image: AssetImage(feature.imageurl),
                      width: widthscreen * 0.7,
                      height: heightscreen * 0.2,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(26),
                          bottomRight: Radius.circular(26),
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                          child: Container(
                            color: Colors.black26,
                            padding: EdgeInsets.symmetric(vertical: 2),
                            child: Text(
                              feature.name,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
