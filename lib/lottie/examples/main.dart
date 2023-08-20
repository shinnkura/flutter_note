import 'package:flutter/material.dart';
import 'package:flutter_note/lottie/examples/homepage.dart';

void main() {
  runApp(
    CoolApp(),
  );
}

class CoolApp extends StatelessWidget {
  CoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
