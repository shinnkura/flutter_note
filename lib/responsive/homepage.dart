import 'package:flutter/material.dart';
import 'package:flutter_note/responsive/component/desktop_body.dart';
import 'package:flutter_note/responsive/component/mobile_body.dart';
import 'package:flutter_note/responsive/component/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}
