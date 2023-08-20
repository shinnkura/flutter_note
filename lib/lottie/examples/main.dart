import 'package:flutter/material.dart';
import 'package:flutter_note/lottie/examples/homepage.dart';

void main() {
  runApp(
    ExamplesApp(),
  );
}

class ExamplesApp extends StatelessWidget {
  ExamplesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
