import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavigation extends StatefulWidget {
  const MyNavigation({super.key});

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  @override
  Widget build(BuildContext context) {
    return GNav(
      rippleColor: const Color.fromARGB(
          15, 17, 3, 49), // tab button ripple color when pressed
      hoverColor: const Color.fromARGB(15, 17, 3, 49), // tab button hover color
      haptic: true, // haptic feedback
      tabBorderRadius: 20,
      // tabActiveBorder:
      //     Border.all(color: Colors.black, width: 1), // tab button border
      // tabBorder:
      //     Border.all(color: Colors.grey, width: 1), // tab button border
      // tabShadow: [
      //   BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
      // ], // tab button shadow
      curve: Curves.easeOutExpo, // tab animation curves
      duration: const Duration(milliseconds: 900), // tab animation duration
      gap: 8, // the tab button gap between icon and text
      color: Colors.grey[800], // unselected icon color
      activeColor: Colors.red, // selected icon and text color
      iconSize: 24, // tab button icon size

      tabBackgroundColor:
          const Color.fromARGB(15, 17, 3, 49), // selected tab background color
      padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 14), // navigation bar padding
      onTabChange: (value) {},
      tabs: const [
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          icon: Icons.storage,
          text: 'Channels',
        ),
        GButton(
          icon: Icons.shopping_bag,
          text: 'Store',
        ),
        GButton(
          icon: Icons.person,
          text: 'Profile',
        )
      ],
    );
  }
}
