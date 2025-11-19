import 'package:flutter/material.dart';
import 'package:nft_markerplace/widgets/custom_tab.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: CustomTabs(),
    );
  }
}
