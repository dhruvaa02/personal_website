import 'package:flutter/material.dart';
import 'package:portfolio/views/home_page.dart';

void main() => runApp(const ParticleApp());

class ParticleApp extends StatelessWidget {
  const ParticleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
