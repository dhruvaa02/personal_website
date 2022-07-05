import 'package:flutter/material.dart';
import 'package:portfolio/widgets/home/nav_bar.dart';
import '../simple_animations_package.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        AnimatedBackground(),
        SingleChildScrollView(child: Center(child: NavBar()))
      ],
    );
  }
}

class AnimatedBackground extends StatelessWidget {
  const AnimatedBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(
          const Duration(seconds: 3),
          ColorTween(
              begin: const Color.fromARGB(255, 1, 0, 53),
              end: const Color.fromARGB(255, 75, 75, 75))),
      Track("color2").add(
          const Duration(seconds: 3),
          ColorTween(
              begin: const Color.fromARGB(255, 77, 77, 77),
              end: const Color.fromARGB(255, 4, 0, 41))),
      Track("color3").add(
          const Duration(seconds: 3),
          ColorTween(
              begin: Color.fromARGB(255, 187, 17, 17),
              end: Color.fromARGB(255, 20, 141, 47)))
    ]);

    return ControlledAnimation(
      playback: Playback.MIRROR,
      tween: tween,
      duration: tween.duration,
      builder: (context, dynamic animation) {
        return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                animation["color1"],
                animation["color2"],
                animation["color3"],
                animation["color1"]
              ])),
        );
      },
    );
  }
}
