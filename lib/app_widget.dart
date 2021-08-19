import 'package:app_teste/app_controller.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDarTheme
                  ? Brightness.dark
                  : Brightness.light),
          initialRoute: '/',        
          routes:{
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
