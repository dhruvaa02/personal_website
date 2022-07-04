import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          _NavBarItem('About Me'),
          _NavBarItem('Experience'),
          _NavBarItem('Education'),
          _NavBarItem('Projects'),
          _NavBarItem('Contact')
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(
    this.title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, color: Colors.black),
      ),
    );
  }
}
