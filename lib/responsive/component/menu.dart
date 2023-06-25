import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          height: 60.0,
          child: DrawerHeader(
            child: Text('Menu'),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
          ),
        ),
        ListTile(
          title: Text('Item 1'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Item 2'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
