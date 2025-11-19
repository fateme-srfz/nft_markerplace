import 'package:flutter/material.dart';

class RankingItem extends StatelessWidget {
  final Map<String, dynamic> item;
  const RankingItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(20),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(item['image']),
            radius: 25,
            
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item['name'],
                style: TextStyle(
                  fontFamily: 'SFProDisplay',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'view info',
                style: TextStyle(
                  fontFamily: 'SFProDisplay',
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${item['value']}',
                  style: TextStyle(
                    fontFamily: 'SFProDisplay',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '${item['change'].toStringAsFixed(2)}%',
                  style: TextStyle(
                    fontFamily: 'SFProDisplay',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: item['change'] >= 0 ? Colors.green : Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
