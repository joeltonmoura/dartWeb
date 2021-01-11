import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:myapp/src/NavigationBar/src/company_name.dart';
import 'package:myapp/src/NavigationBar/src/nav_bar.dart';
import 'package:myapp/src/NavigationBar/src/nav_bar_item.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 100.0,
        color: Colors.deepOrangeAccent,
        child: Stack(
          children: [
            CompanyName(),
            Align(
              alignment: Alignment.center,
              child: NavBar(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: NavBarItem(
                icon: Icons.logout,
                active: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
