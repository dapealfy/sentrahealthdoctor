import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sentrahealth_dokter/features/home/presentation/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Tani',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Poppins',
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => HomePage(),
        // '/login': (BuildContext context) => LoginPage(),
      },
    );
  }
}
