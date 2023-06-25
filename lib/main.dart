import 'package:flutter/material.dart';
import 'package:flutter_note/components/button.dart';
import 'package:flutter_note/responsive/responsive.dart';

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
        'responsive': (context) => Responsive(),
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
            Padding(
              padding: EdgeInsets.all(20),
              child: Button(
                width: double.infinity,
                title: 'レスポンシブデザイン',
                onPressed: () {
                  Navigator.of(context).pushNamed('responsive');
                },
                disable: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
