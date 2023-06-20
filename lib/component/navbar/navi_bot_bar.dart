import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class NaviBottomNavBar extends StatelessWidget {
  const NaviBottomNavBar({Key? key, required this.index, required this.onTap})
      : super(key: key);
  final int index;
  final Function(int index) onTap;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: const Color(0xff7DA5F2),
          textTheme: TextTheme(
              displayLarge: TextStyle(color: Colors.black38.withOpacity(0.5)))),
      child: BottomNavyBar(
        selectedIndex: index,
        onItemSelected: (index) {
          onTap.call(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: const Text('Home'),
              icon: const Icon(Icons.home),
              activeColor: const Color(0xff7DA5F2),
              inactiveColor: Colors.black38),
          BottomNavyBarItem(
              title: const Text('Akun Saya'),
              icon: const Icon(Icons.person),
              activeColor: const Color(0xff7DA5F2),
              inactiveColor: Colors.black38),
        ],
      ),
    );
  }
}
