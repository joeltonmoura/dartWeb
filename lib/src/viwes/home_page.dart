import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/CalendarSpace/calendar_space.dart';
import 'package:myapp/src/Dashboard/dashboard.dart';
import 'package:myapp/src/NavigationBar/navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              NavigationBar(),
              DashBoard(),
              CalendarSpace(),
            ])));
  }
}
