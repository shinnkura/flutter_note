import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'components/button.dart';
import 'lottie/cool/main.dart';
import 'lottie/examples/main.dart';
import 'responsive/dashboard_responsive/main.dart';
import 'responsive/purple_responsive/responsive.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode, // Turn off for release mode
      builder: (context) => const MyHome(), // Wrap your app
    ),
  );
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Note',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
        'p_responsive': (context) => Responsive(),
        'd_responsive': (context) => TableResponsive(),
        'cool': (context) => CoolApp(),
        'example': (context) => ExamplesApp(),
      },
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter Note'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'レスポンシブデザイン',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Button(
                    width: double.infinity,
                    title: 'シンプルレスポンシブ',
                    onPressed: () {
                      Navigator.of(context).pushNamed('p_responsive');
                    },
                    disable: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Button(
                    width: double.infinity,
                    title: 'ダッシュボードレスポンシブ',
                    onPressed: () {
                      Navigator.of(context).pushNamed('d_responsive');
                    },
                    disable: false,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '動くアイコン画像',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Button(
                    width: double.infinity,
                    title: 'Cool Lottie',
                    onPressed: () {
                      Navigator.of(context).pushNamed('cool');
                    },
                    disable: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Button(
                    width: double.infinity,
                    title: 'タップすると動く',
                    onPressed: () {
                      Navigator.of(context).pushNamed('example');
                    },
                    disable: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
