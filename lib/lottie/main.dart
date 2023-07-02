import 'package:flutter/material.dart';
import 'package:flutter_note/components/button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(
    const LottieApp(),
  );
}

class LottieApp extends StatelessWidget {
  const LottieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      title: 'Lottie Demo',
      home: LottieWidget(),
    );
  }
}

class LottieWidget extends StatelessWidget {
  LottieWidget({Key? key}) : super(key: key);

  // List of Lottie animation asset paths
  final List<String> lottieIcons = [
    'assets/lottie/coffee.json',
    // 'assets/lottie_icon2.json',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lottie Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            Button(
              width: 200,
              title: 'Open URL',
              onPressed: _launchURL,
              disable: false,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: lottieIcons.length,
                itemBuilder: (context, index) {
                  return Lottie.asset(lottieIcons[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  _launchURL() async {
    final Uri url = Uri.parse('https://lottiefiles.com/');
    if (await canLaunch(url.toString())) {
      await launch(url.toString());
    } else {
      throw 'Could not launch $url';
    }
  }
}
