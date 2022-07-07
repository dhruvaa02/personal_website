import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 100,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            _NavBarItem('Github'),
            _NavBarItem('LinkedIn'),
            _NavBarItem('Resume'),
          ],
        ),
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
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_business),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 18, color: Colors.black),
          )
        ],
      ),
    );
  }
}

class FloatMenu extends StatefulWidget {
  const FloatMenu({Key? key}) : super(key: key);

  @override
  State<FloatMenu> createState() => _FloatMenuState();
}

class _FloatMenuState extends State<FloatMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: SpeedDial(
        label: Text("Get to know me!"),
        switchLabelPosition: true,
        //Speed dial menu //margin bottom
        icon: Icons.menu, //icon on Floating action button
        activeIcon: Icons.close, //icon when menu is expanded on button
        backgroundColor: Colors.black, //background color of button
        foregroundColor: Colors.white, //font color, icon color in button
        activeBackgroundColor:
            Colors.white, //background color when menu is expanded
        activeForegroundColor: Colors.black,
        buttonSize: const Size(60.0, 60.0), //button size
        visible: true,
        closeManually: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.0,
        onOpen: () {}, // action when menu opens
        onClose: () {}, //action when menu closes
        elevation: 8.0, //shadow elevation of button
        shape: const CircleBorder(), //shape of button

        children: [
          SpeedDialChild(
            //speed dial child
            child: const Icon(Icons.accessibility),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            label: 'LinkedIn',
            labelStyle: const TextStyle(fontSize: 18.0, color: Colors.white),
            labelBackgroundColor: Colors.black,
            onTap: () => print('FIRST CHILD'),
            onLongPress: () => print('FIRST CHILD LONG PRESS'),
          ),
          SpeedDialChild(
            //speed dial child
            child: const Icon(Icons.accessibility),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            label: 'GitHub',
            labelStyle: const TextStyle(fontSize: 18.0, color: Colors.white),
            labelBackgroundColor: Colors.black,
            onTap: () => print('FIRST CHILD'),
            onLongPress: () => print('FIRST CHILD LONG PRESS'),
          ),
          SpeedDialChild(
            //speed dial child
            child: const Icon(Icons.accessibility),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            label: 'Resume',
            labelStyle: const TextStyle(fontSize: 18.0, color: Colors.white),
            labelBackgroundColor: Colors.black,
            onTap: () => print('FIRST CHILD'),
            onLongPress: () => print('FIRST CHILD LONG PRESS'),
          ),

          //add more menu item childs here
        ],
      ),
    );
  }
}
