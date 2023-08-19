import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
          'https://lottie.host/eca8d997-0092-4c9e-a1cb-170c48daa22c/4yqouo4eN5.json',
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
