import 'package:flutter/material.dart';

class CustomTabs extends StatefulWidget {
  const CustomTabs({super.key});

  @override
  State<CustomTabs> createState() => _CustomTabsState();
}

class _CustomTabsState extends State<CustomTabs> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        tabItem("Ranking", 0, 'assets/icons/rankingicon.png'),
        const SizedBox(width: 50),
        tabItem("Activity", 1, 'assets/icons/activityicon.png'),
      ],
    );
  }

  Widget tabItem(String title, int index, String iconpath) {
    bool isSelected = selected == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = index;
        });
      },
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      iconpath,
                      width: 19,
                      height: 19,
                      color: isSelected ? Colors.white : Colors.grey,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'SFProDisplay',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: isSelected ? Colors.white : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),

          AnimatedContainer(
            duration: Duration(milliseconds: 250),
            curve: Curves.easeOut,
            height: 3,
            width: isSelected ? 60 : 0,
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ],
      ),
    );
  }
}
