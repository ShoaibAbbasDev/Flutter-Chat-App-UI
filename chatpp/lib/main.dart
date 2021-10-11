import 'package:chatpp/ChatScreen.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main() {
  // This widget is the main void function of the app.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // This widget will initiate the app working.
      initialRoute: '/',
      routes: {
        '/':(context)=>HomeScreen(),
        '/ChatScreen': (context)=>ChatScreen()
      },
    );
  }
}
