import 'package:flutter/material.dart';
import 'package:myapp/src/viwes/home_page.dart';
import 'package:page_transition/page_transition.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepOrangeAccent),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            {
              return PageTransition(child: HomePage(), type: null);
            }
        }
      },
    );
  }
}
