import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
          color: Colors.grey[400],
          activeColor: const Color.fromARGB(255, 255, 255, 255),
          tabActiveBorder: Border.all(color: Colors.transparent),
          tabBackgroundColor: Colors.black,
          mainAxisAlignment: MainAxisAlignment.center,
          onTabChange: (value) => onTabChange!(value),
          tabBorderRadius: 20,
          tabs: const [
            GButton(icon: Icons.home, text: "首页"),
            GButton(icon: Icons.shopping_bag_rounded, text: "购物车"),
          ]),
    );
  }
}
