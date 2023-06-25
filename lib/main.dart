import 'package:flutter/material.dart';
import 'package:flutter_note/components/button.dart';
import 'package:flutter_note/responsive/dashboard_responsive/main.dart';
import 'package:flutter_note/responsive/purple_responsive/responsive.dart';

void main() {
  runApp(const MyHome());
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
      initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
        'p_responsive': (context) => Responsive(),
        'd_responsive': (context) => TableResponsive(),
      },
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
          ],
        ),
      ),
    );
  }
}
