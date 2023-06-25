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
      title: 'Flutter Note',
      initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
        'responsive': (context) => Responsive(),
        // '/second': (context) =>  SecondPage(),
      },
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Note',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
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
              padding: EdgeInsets.all(8.0),
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
