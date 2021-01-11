import 'package:flutter/material.dart';

import 'nav_bar_item.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<bool> selected = [true, false, false, false, false];
  void select(int n) {
    for (int i = 0; i < 5; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: Column(
        children: [
          NavBarItem(
            icon: Icons.home,
            active: selected[0],
            touched: () {
              setState(() {
                select(0);
              });
            },
          ),
          NavBarItem(
            icon: Icons.list,
            active: selected[1],
            touched: () {
              setState(() {
                select(1);
              });
            },
          ),
          NavBarItem(
            icon: Icons.folder,
            active: selected[2],
            touched: () {
              setState(() {
                select(2);
              });
            },
          ),
          NavBarItem(
            icon: Icons.message_outlined,
            active: selected[3],
            touched: () {
              setState(() {
                select(3);
              });
            },
          ),
          NavBarItem(
            icon: Icons.settings_applications,
            active: selected[4],
            touched: () {
              setState(() {
                select(4);
              });
            },
          ),
        ],
      ),
    );
  }
}
