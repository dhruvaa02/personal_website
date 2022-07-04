import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          color: Colors.blue,
          constraints: const BoxConstraints(maxHeight: 400.0, maxWidth: 400.0),
          child: Scaffold(
            backgroundColor: Colors.blue,
            body: Center(
              child: Column(
                children: [
                  const Text('Hi'),
                  BottomNavigationBar(
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Home',
                        backgroundColor: Colors.red,
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.business),
                        label: 'Business',
                        backgroundColor: Colors.green,
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.school),
                        label: 'School',
                        backgroundColor: Colors.purple,
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.settings),
                        label: 'Settings',
                        backgroundColor: Colors.pink,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
