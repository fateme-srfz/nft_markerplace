import 'package:flutter/material.dart';
import 'package:nft_markerplace/models/seller_class.dart';

class SellerCard extends StatelessWidget {
  final List<SellerClass> sellerlist;
  const SellerCard({super.key, required this.sellerlist});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sellerlist.length,
        itemBuilder: (context, index) {
          final seller = sellerlist[index];
          return Padding(
            padding: const EdgeInsets.only(right: 15),
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
                          child: InkWell(
                            borderRadius: BorderRadius.circular(15),
                            onTap: () {},
                            child: Ink.image(
                              image: AssetImage(seller.imageurl),
                              fit: BoxFit.cover,
                              height: 200,
                              width: 200,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          seller.title,
                          style: TextStyle(
                            fontFamily: 'SFProDisplay',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 15,
                                ),
                                Text(
                                  seller.like.toString(),
                                  style: TextStyle(
                                    fontFamily: 'SFProDisplay',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '${seller.price.toStringAsFixed(0)}\$',
                              style: TextStyle(
                                fontFamily: 'SFProDisplay',
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
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
          );
        },
      ),
    );
  }
}
