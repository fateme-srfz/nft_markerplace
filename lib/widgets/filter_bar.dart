import 'package:flutter/material.dart';

class FilterBarWidget extends StatelessWidget {
  const FilterBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(40),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 0.9, color: Colors.white),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/categoricon.png',
                    width: 19,
                    height: 19,
                    color: Color(0xFFFFFFFF),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'All categories',
                    style: TextStyle(
                      fontFamily: 'SFProDisplay',
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(40),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 0.9, color: Colors.white),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/chainicon.png',
                    width: 19,
                    height: 19,
                    color: Color(0xFFFFFFFF),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'All Chains',
                    style: TextStyle(
                      fontFamily: 'SFProDisplay',
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
