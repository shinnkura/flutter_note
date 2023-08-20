import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // controller
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (isPlaying == false) {
              isPlaying = true;
              _controller.forward();
            } else {
              isPlaying = false;
              _controller.reverse();
            }
          },
          child: Lottie.network(
            'https://lottie.host/628eeaed-6a25-4f5a-b5a9-5d094c558022/b35q9p7cHF.json',
            width: 300,
            height: 300,
            controller: _controller,
          ),
        ),
      ),
    );
  }
}
